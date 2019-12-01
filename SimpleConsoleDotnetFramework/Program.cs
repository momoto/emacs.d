using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SimpleConsoleDotnetFramework
{
    class Program
    {
        static void Main(string[] args)
        {
            ExampleImplementation<string> i = new ExampleImplementation<string>();
            i.GetResult(string.Concat("To box or not box", 42, true));

            i.ResultRetrieved += I_ResultRetrieved;

            // 
            var numbers = Enumerable.Range(0, 60);
            var parallelResult = numbers.AsParallel().Where(x => x % 2 == 0).ToArray();


            // Lambda
            Func<int, int> myDelegate = delegate (int x) { return x * 2; };
            myDelegate(21); // returns 42

            // Anonymous
            var person = new { FirstName = "John", LastName = "Doe" };
            Console.WriteLine(person.GetType().Name); // Displays “<>f__AnonymousType0`2”

            // LINQ
            int[] data = { 1, 2, 5, 8, 11 };
            var result = from d in data select d;
            Console.WriteLine(string.Join(", ", result)); // Displays 1, 2, 5, 8, 11

            //
            DateTime[] dates = { System.DateTime.Now };
            DateTime filtered = dates.Where(d => d.Year == DateTime.Now.Year).OrderByDescending(d => d).FirstOrDefault();

            Console.ReadLine();
        }

        private static void I_ResultRetrieved(object sender, EventArgs e)
        {
            Console.WriteLine("😢");
            throw new NotImplementedException();
        }
    }

    // Base interface の signature は derived interface で定義しなくてもよい
    public interface IBaseExample<MY_TYPE>
    {
        MY_TYPE readOnlyValue { get; } // set がないと読み取り専用になる。代入できない (CS0200)
    }

    // interface で public 以外のアクセス修飾子を使用できない (CS0106)
    public interface IExample<MY_TYPE>: IBaseExample <MY_TYPE>
    {
        int Value { get; set; }
        int this[string index] { get; set; }
        string GetResult(MY_TYPE s);
        event EventHandler ResultRetrieved;
    }

    // interface で定義されたメンバーはすべて実装しなければならない (CS0535)
    // interface の実装で public 以外のアクセス修飾子を使用できない (CS0737)
    class ExampleImplementation<MY_TYPE> : IExample<MY_TYPE>
    {
        public MY_TYPE readOnlyValue { get; } // interface が get; でも set; を実装することができる 
        public int Value { get; set; }  // public でしか実装できない
        public int this[string index]   // public でしか実装できない
        {
            get { return 42; }
            set { }
        }
        public event EventHandler ResultRetrieved
        {
            add { /*throw new NotSupportedException();*/ }
            remove { }
        }

        public string GetResult(MY_TYPE willBePrinted)
        {
            Console.WriteLine(willBePrinted.ToString());
            string beforeBoxedS = willBePrinted.ToString();
            Console.WriteLine(beforeBoxedS);
            object boxedStr = beforeBoxedS;
            Console.WriteLine(boxedStr);
            string unboxedStr = (string) boxedStr;
            Console.WriteLine(unboxedStr);

            return unboxedStr;
        }
    }
}
