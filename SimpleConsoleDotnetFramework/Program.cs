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
            i.readOnlyValue =  i.GetResult(string.Concat("To box or not box", 42, true));

            var numbers = Enumerable.Range(0, 60);
            var parallelResult = numbers.AsParallel().Where(x => x % 2 == 0).ToArray();

            // Lambda
            Func<int, int> myDelegate = delegate (int x) { return x * 2; };
            Console.WriteLine(myDelegate(21)); // Displays 42

            // Anonymous
            var person = new { FirstName = "John", LastName = "Doe" };
            Console.WriteLine(person.GetType().Name); // Displays “<>f__AnonymousType0`2”

            int[] data = { 1, 2, 5, 8, 11 };
            var result = from d in data
                         select d;
            Console.WriteLine(string.Join(" ", result)); // Displays 1, 2, 5, 8, 11


            Console.ReadLine();
        }
    }

    // interface のメンバーは定義を持つことができない (CS0531)
    // interface で public 以外のアクセス修飾子を使用できない (CS0106)
    public interface IExample<MY_TYPE>: IBaseExample <MY_TYPE>
    {
        int Value { get; set; }
        int this[string index] { get; set; }

        string GetResult(MY_TYPE s);
        // string hello() { Console.WriteLine("hello"); } // 定義を持てない

        event EventHandler ResultRetrieved;
    }
    // Base interface の signature は derived interface で定義しなくてもよい
    public interface IBaseExample <MY_TYPE>
    {
        MY_TYPE readOnlyValue { get; } // set がないと読み取り専用になる。代入できない (CS0200)
    }

    // interface で定義されたメンバーはすべて実装しなければならない (CS0535)
    // interface の実装で public 以外のアクセス修飾子を使用できない (CS0737)
    class ExampleImplementation<MY_TYPE> : IExample<MY_TYPE>
    {
        public int Value { get; set; }  // public でしか実装できない
        public int this[string index]   // public でしか実装できない
        {
            get { return 42; }
            set { }
        }
        public MY_TYPE readOnlyValue { get; set;  } // interface が get; しかなくても set; を実装できる 

        public string GetResult(MY_TYPE willBePrinted)
        {
            int beforeBoxedI = 42;
            string beforeBoxedS = "Hello!";

            object boxed = beforeBoxedS; // taking a value type, putting it inside a new object on the heap, and storing a reference to it on the stack.

            //int unboxedInt = (int)boxed; // System.InvalidCastException: 指定されたキャストは有効ではありません
            string unboxedStr = (string)boxed; // 明示的なキャストが必要

            Console.WriteLine(willBePrinted);

            return "result";
        }

        public event EventHandler CalculationPerformed;
        public event EventHandler ResultRetrieved;
    }
}
