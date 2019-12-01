using Microsoft.VisualStudio.TestTools.UnitTesting;
using BankAccountNS;
using System;

namespace UnitTestProject2
{
    [TestClass]
    [DeploymentItem("MyFiles")]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            Console.WriteLine("stdout {0} {1}", 1, "text");
            Console.WriteLine("stdout {0} {1}", 1, "text");
            Console.WriteLine("stdout {0} {1}", 1, "text");
            Console.WriteLine("stdout {0} {1}", 1, "text");
            Assert.AreEqual(1, 1, "Yay :)");
            Assert.AreEqual(1, 1, "Yay :)");
            Assert.AreEqual(1, 1, "Yay :)");
            Assert.AreEqual(1, 1, "Yay :)");
            Assert.AreEqual(1, 1, "Yay :)");
            Assert.AreEqual(1, 1, "Yay :)");
        }

        [TestMethod]
        [DeploymentItem("MyFiles")]
        public void Debit_WithValidAmount_UpdatesBalance()
        {
            // Arrange
            double beginningBalance = 11.99;
            double debitAmount = 4.55;
            double expected = 7.44;
            BankAccount account = new BankAccount("Mr. Bryan Walton", beginningBalance);

            Console.WriteLine("stdout {0} {1}", 1, "text");
            Console.WriteLine("stdout {0} {1}", 1, "text");

            // Act
            account.Debit(debitAmount);

            // Assert
            double actual = account.Balance;
            Assert.AreEqual(expected, actual, 0.001, "Account not debited correctly");

            TestResult result = new TestResult();
            //result.LogOutput = '';

        }
    }
}
