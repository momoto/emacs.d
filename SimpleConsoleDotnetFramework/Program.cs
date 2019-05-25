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
            ExampleImplementation i = new ExampleImplementation();
            i.readOnlyValue = 1;

            Console.WriteLine(i.readOnlyValue);
            Console.ReadLine();
        }
    }

    // interface のメンバーは定義を持つことができない (CS0531)
    // interface で public 以外のアクセス修飾子を使用できない (CS0106)
    interface IExample
    {
        int Value { get; set; }
        int this[string index] { get; set; }
        int readOnlyValue { get; } // set がないと読み取り専用になる。代入できない (CS0200)

        string GetResult();
        // string hello() { Console.WriteLine("hello"); } // 定義を持てない

        event EventHandler ResultRetrieved;
    }

    // interface で定義されたメンバーはすべて実装しなければならない (CS0535)
    // interface の実装で public 以外のアクセス修飾子を使用できない (CS0737)
    class ExampleImplementation : IExample
    {
        public int Value { get; set; }  // public でしか実装できない
        public int this[string index]   // public でしか実装できない
        {
            get { return 42; }
            set { }
        }
        public int readOnlyValue { get; set;  } // interface が get; しかなくても set; を実装できる 
        public string GetResult()
        {
            return "result";
        }
        
        public event EventHandler CalculationPerformed;
        public event EventHandler ResultRetrieved;
    }
}
