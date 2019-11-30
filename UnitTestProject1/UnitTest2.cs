using System;
using ConsoleApp2;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace UnitTestProject1
{
    [TestClass]
    public class UnitTest2
    {
        [TestMethod]
        public void TestMethod1()
        {
            Console.WriteLine("why did it come to this?");
            Assert.AreEqual(1, 1, "yay :)");
            Assert.AreEqual(1, 1, "yay :)");
            Assert.AreEqual(1, 1, "yay :)");
            Assert.AreEqual(1, 1, "yay :)");

        }
    }
}
