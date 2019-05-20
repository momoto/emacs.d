# 70-483 Programming in C#

- https://www.microsoft.com/en-us/learning/exam-70-483.aspx
- http://aka.ms/learningpaths ← 見えない

[[_TOC_]]

## Skills measured

1. Manage Program Flow (25-30%), 1. プログラムフローの管理 (>80%)
2. Create and Use Types (25-30%), 4. 型の作成と使用 (60%)
   - **Manipulate strings** Manipulate strings by using the StringBuilder, StringWriter, and StringReader classes; search strings; enumerate string methods; format strings; use string interpolation
   - **Create and implement a class hierarchy** Design and implement an interface; inherit from a base class; create and implement classes based on the IComparable, IEnumerable, IDisposable, and IUnknown interfaces
3. Debug Applications and Implement Security (25-30%), 2. アプリケーションのセキュリティとデバッグ (60%)
4. Implement Data Access (25-30%), 3. データアクセスの実装 (>40%)
  - **Query and manipulate data and objects by using LINQ** Query data by using operators, including projection, join, group, take, skip, aggregate; create methodbased LINQ queries; query data by using query comprehension syntax; select data by using anonymous types; force execution of a query; read, filter, create, and modify data structures by using LINQ to XML

## 最も成績の低かったスキル領域 (2019/04/13 Failed 642/700)

- 文字列を操作する
  - StringBuilder, StringWriter, および StringReader の各クラスによる文字列の操作、文字列の検索, String メソッドの列挙、文字列の書式設定
- LINQ を使用し、データおよびオブジェクトの照会と操作を実行する
  - 各種演算子（プロジェクション、結合、group, Take, Skip Aggregate) を使用したデータの照会
  - メソッドベースの LINQ クエリの作成、クエリの包含構文によるデータの照会、匿名型によるデータの選択、クエリの強制適用、LINQ to XML によるデータ構造の読み取り、フィルター処理、作成、および変更
- クラス階層を作成および実装する。
  - インターフェースの設計と実装、基本クラスの継承、IComparable, IEnumerable, IDisaposable および IUnknown インターフェースに基づくクラスの作成と実装

---

- Number: 70-483
- Passing Score: 800
- Time Limit: 120 min
- File Version: 9.0

Sections

1. Volume A
2. Volume B

## 70-483 Programming in C# Version 9.0

Exam A

# QUESTION 1

You are developing an application that includes a class named Order. The application will store a collection of Order objects. The collection must meet the following requirements:

- Use strongly typed members.
- Process Order objects in first-in-first-out order. Store values for each Order object.
- Use zero-based indices.
- You need to use a collection type that meets the requirements. Which collection type should you use?

A. Queue<T>
B. SortedList
C. LinkedList<T> D. HashTable
E. Array<T>

Correct Answer: A Section: Volume A Explanation
Explanation/Reference:
Explanation:
Queues are useful for storing messages in the order they were received for sequential processing. Objects stored in a Queue<T> are inserted at one end and removed from the other. http://msdn.microsoft.com/en-us/library/7977ey2c.aspx

# QUESTION 2

You are developing an application. The application calls a method that returns an array of integers named employeeIds. You define an integer variable named employeeIdToRemove and assign a value to it. You declare an array named filteredEmployeeIds.
You have the following requirements:
Remove duplicate integers from the employeeIds array.
Sort the array in order from the highest value to the lowest value.
Remove the integer value stored in the employeeIdToRemove variable from the employeeIds array.
You need to create a LINQ query to meet the requirements. Which code segment should you use?
       
 A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: C Section: Volume A Explanation
Explanation/Reference:

# QUESTION 3

You are developing an application that includes the following code segment. (Line numbers are included for reference only.)
 
 The GetAnimals() method must meet the following requirements:
Connect to a Microsoft SQL Server database.
Create Animal objects and populate them with data from the database. Return a sequence of populated Animal objects.
You need to meet the requirements.
Which two actions should you perform? (Each correct answer presents part of the solution. Choose two.)
A. Insert the following code segment at line 16: while(sqlDataReader.NextResult())
B. Insert the following code segment at line 13: sqlConnection.Open();
C. Insert the following code segment at line 13: sqlConnection.BeginTransaction();
D. Insert the following code segment at line 16: while(sqlDataReader.Read())
E. Insert the following code segment at line 16: while(sqlDataReader.GetValues())
Correct Answer: BD Section: Volume A Explanation
    
 Explanation/Reference:
Explanation:
SqlConnection.Open - Opens a database connection with the property settings specified by the ConnectionString. http://msdn.microsoft.com/en-us/library/system.data.sqlclient.sqlconnection.open.aspx SqlDataReader.Read - Advances the SqlDataReader to the next record. http://msdn.microsoft.com/en-us/library/system.data.sqlclient.sqldatareader.read.aspx
# QUESTION 4
DRAG DROP
You are developing a custom collection named LoanCollection for a class named Loan class.
You need to ensure that you can process each Loan object in the LoanCollection collection by using a foreach loop.
How should you complete the relevant code? (To answer, drag the appropriate code segments to the correct locations in the answer area. Each code segment may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.)
Select and Place:

 Correct Answer:
 
 Section: Volume A Explanation
Explanation/Reference:
 
 # QUESTION 5
You are developing an application that uses the Microsoft ADO.NET Entity Framework to retrieve order information from a Microsoft SQL Server database. The application includes the following code. (Line numbers are included for reference only.)
The application must meet the following requirements:
Return only orders that have an OrderDate value other than null.
Return only orders that were placed in the year specified in the OrderDate property or in a later year.
You need to ensure that the application meets the requirements. Which code segment should you insert at line 08?
A. Where order.OrderDate.Value != null && order.OrderDate.Value.Year > = year
B. Where order.OrderDate.Value = = null && order.OrderDate.Value.Year = = year
C. Where order.OrderDate.HasValue && order.OrderDate.Value.Year = = year D. Where order.OrderDate.Value.Year = = year
Correct Answer: A Section: Volume A Explanation
Explanation/Reference:
*For the requirement to use an OrderDate value other than null use: OrderDate.Value != null
*For the requirement to use an OrderDate value for this year or a later year use: OrderDate.Value>= year
# QUESTION 6
DRAG DROP
You are developing an application by using C#. The application includes an array of decimal values named loanAmounts. You are developing a LINQ query to return the values from the array.
The query must return decimal values that are evenly divisible by two. The values must be sorted from the lowest value to the highest value.
You need to ensure that the query correctly returns the decimal values.
How should you complete the relevant code? (To answer, drag the appropriate code segments to the correct
   
 locations in the answer area. Each code segment may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.)
Select and Place:
Correct Answer:
Section: Volume A Explanation
Explanation/Reference:
Note: In a query expression, the orderby clause causes the returned sequence or subsequence (group) to be sorted in either ascending or descending order.
  
 Examples:
// Query for ascending sort.
IEnumerable<string> sortAscendingQuery = from fruit in fruits
orderby fruit //"ascending" is default select fruit;
// Query for descending sort. IEnumerable<string> sortDescendingQuery =
from w in fruits orderby w descending select w;
# QUESTION 7
You are developing an application. The application includes a method named ReadFile that reads data from a file.
The ReadFile() method must meet the following requirements:
It must not make changes to the data file.
It must allow other processes to access the data file.
It must not throw an exception if the application attempts to open a data file that does not exist.
You need to implement the ReadFile() method. Which code segment should you use?
A. var fs = File.Open(Filename, FileMode.OpenOrCreate, FileAccess.Read, FileShare.ReadWrite);
B. var fs = File.Open(Filename, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
C. var fs = File.Open(Filename, FileMode.OpenOrCreate, FileAccess.Read, FileShare.Write);
D. var fs = File.ReadAllLines(Filename);
E. var fs = File.ReadAllBytes(Filename);
Correct Answer: A Section: Volume A Explanation
Explanation/Reference:
Explanation:
FileMode.OpenOrCreate - Specifies that the operating system should open a file if it exists; otherwise, a new file should be created. If the file is opened with FileAccess.Read, FileIOPermissionAccess.Read permission is required. If the file access is FileAccess.Write, FileIOPermissionAccess.Write permission is required. If the file is opened with FileAccess.ReadWrite, both FileIOPermissionAccess.Read and FileIOPermissionAccess.Write permissions are required.
http://msdn.microsoft.com/en-us/library/system.io.filemode.aspx
FileShare.ReadWrite - Allows subsequent opening of the file for reading or writing.If this flag is not specified, any request to open the file for reading or writing (by this process or another process) will fail until the file is closed.However, even if this flag is specified, additional permissions might still be needed to access the file.
http://msdn.microsoft.com/pl-pl/library/system.io.fileshare.aspx
# QUESTION 8
An application receives JSON data in the following format:
   
  The application includes the following code segment. (Line numbers are included for reference only.)
 You need to ensure that the ConvertToName() method returns the JSON input string as a Name object. Which code segment should you insert at line 10?
A. Return ser.ConvertToType<Name>(json);
B. Return ser.DeserializeObject(json);
C. Return ser.Deserialize<Name>(json); D. Return (Name)ser.Serialize(json);
Correct Answer: C Section: Volume A Explanation
Explanation/Reference:
Explanation:
JavaScriptSerializer.Deserialize<T> - Converts the specified JSON string to an object of type T. http://msdn.microsoft.com/en-us/library/bb355316.aspx
# QUESTION 9
DRAG DROP
An application serializes and deserializes XML from streams. The XML streams are in the following format:
The application reads the XML streams by using a DataContractSerializer object that is declared by the following code segment:
var ser = new DataContractSerializer(typeof(Name));
You need to ensure that the application preserves the element ordering as provided in the XML stream.
 
 How should you complete the relevant code? (To answer, drag the appropriate attributes to the correct locations in the answer area-Each attribute may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.)
Select and Place:
Correct Answer:
 
 Section: Volume A Explanation
Explanation/Reference:
Explanation:
DataContractAttribute - Specifies that the type defines or implements a data contract and is serializable by a serializer, such as the DataContractSerializer. To make their type serializable, type authors must define a data contract for their type.
http://msdn.microsoft.com/en-us/library/system.runtime.serialization.datacontractattribute.aspx
DataMemberAttribute - When applied to the member of a type, specifies that the member is part of a data contract and is serializable by the DataContractSerializer.
  
 http://msdn.microsoft.com/en-us/library/ms574795.aspx
# QUESTION 10
You are developing an application. The application converts a Location object to a string by using a method named WriteObject. The WriteObject() method accepts two parameters, a Location object and an XmlObjectSerializer object.
The application includes the following code. (Line numbers are included for reference only.)
 You need to serialize the Location object as a JSON object. Which code segment should you insert at line 20?
A. New DataContractSerializer(typeof(Location))
B. New XmlSerializer(typeof(Location))
C. New NetDataContractSenalizer()
D. New DataContractJsonSerializer(typeof(Location))
Correct Answer: D Section: Volume A Explanation
Explanation/Reference:
Explanation:
The DataContractJsonSerializer class serializes objects to the JavaScript Object Notation (JSON) and deserializes JSON data to objects.
Use the DataContractJsonSerializer class to serialize instances of a type into a JSON document and to deserialize a JSON document into an instance of a type.
 
 # QUESTION 11
An application includes a class named Person. The Person class includes a method named GetData. You need to ensure that the GetData() from the Person class.
Which access modifier should you use for the GetData() method?
A. Internal
B. Protected
C. Private
D. Protected internal E. Public
Correct Answer: B Section: Volume A Explanation
Explanation/Reference:
Explanation:
Protected - The type or member can be accessed only by code in the same class or structure, or in a class that is derived from that class.
http://msdn.microsoft.com/en-us/library/ms173121.aspx
The protected keyword is a member access modifier. A protected member is accessible within its class and by derived class instances.
# QUESTION 12
You are developing an application by using C#. The application includes the following code segment. (Line numbers are included for reference only.)
The DoWork() method must not throw any exceptions when converting the obj object to the IDataContainer interface or when accessing the Data property.
You need to meet the requirements. Which code segment should you insert at line 07?
A. var dataContainer = (IDataContainer)obj;
B. dynamic dataContainer = obj;
C. var dataContainer = obj is IDataContainer;
D. var dataContainer = obj as IDataContainer;
 
 Correct Answer: D Section: Volume A Explanation
Explanation/Reference:
Explanation:
As - The as operator is like a cast operation. However, if the conversion isn't possible, as returns null instead of raising an exception.
http://msdn.microsoft.com/en-us/library/cscsdfbt(v=vs.110).aspx
# QUESTION 13
You are creating an application that manages information about zoo animals. The application includes a class named Animal and a method named Save.
The Save() method must be strongly typed. It must allow only types inherited from the Animal class that uses a constructor that accepts no parameters.
You need to implement the Save() method. Which code segment should you use?
A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: C Section: Volume A Explanation
 
 Explanation/Reference:
Explanation:
When you define a generic class, you can apply restrictions to the kinds of types that client code can use for type arguments when it instantiates your class. If client code tries to instantiate your class by using a type that is not allowed by a constraint, the result is a compile-time error. These restrictions are called constraints. Constraints are specified by using the where contextual keyword. http://msdn.microsoft.com/en-us/library/d5x73970.aspx
# QUESTION 14
DRAG DROP
You are developing a class named ExtensionMethods.
You need to ensure that the ExtensionMethods class implements the IsEmail() method on string objects.
How should you complete the relevant code? (To answer, drag the appropriate code segments to the correct locations in the answer area. Each code segment may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.)
Select and Place:

 Correct Answer:
 
 Section: Volume A Explanation
Explanation/Reference:
 
 # QUESTION 15
You are developing an application. The application includes classes named Employee and Person and an interface named IPerson.
The Employee class must meet the following requirements:
It must either inherit from the Person class or implement the IPerson interface. It must be inheritable by other classes in the application.
You need to ensure that the Employee class meets the requirements.
Which two code segments can you use to achieve this goal? (Each correct answer presents a complete solution. Choose two.)
A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: BD Section: Volume A Explanation
Explanation/Reference:
Explanation:
Sealed - When applied to a class, the sealed modifier prevents other classes from inheriting from it. http://msdn.microsoft.com/en-us/library/88c54tsw(v=vs.110).aspx
# QUESTION 16
You are developing an application that will convert data into multiple output formats.
   
 The application includes the following code. (Line numbers are included for reference only.)
You are developing a code segment that will produce tab-delimited output. All output routines implement the following interface:
You need to minimize the completion time of the GetOutput() method. Which code segment should you insert at line 06?
  
 A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: D Section: Volume A Explanation
Explanation/Reference:
Explanation:
A String object concatenation operation always creates a new object from the existing string and the new data. A StringBuilder object maintains a buffer to accommodate the concatenation of new data. New data is appended to the buffer if room is available; otherwise, a new, larger buffer is allocated, data from the original buffer is copied to the new buffer, and the new data is then appended to the new buffer.
The performance of a concatenation operation for a String or StringBuilder object depends on the frequency of memory allocations. A String concatenation operation always allocates memory, whereas a StringBuilder concatenation operation allocates memory only if the StringBuilder object buffer is too small to accommodate
 
 the new data. Use the String class if you are concatenating a fixed number of String objects. In that case, the compiler may even combine individual concatenation operations into a single operation. Use a StringBuilder object if you are concatenating an arbitrary number of strings; for example, if you're using a loop to concatenate a random number of strings of user input. http://msdn.microsoft.com/en-us/library/system.text.stringbuilder(v=vs.110).aspx
# QUESTION 17
You are developing an application by using C#.
The application includes an object that performs a long running process.
You need to ensure that the garbage collector does not release the object's resources until the process completes.
Which garbage collector method should you use?
A. ReRegisterForFinalize() B. SuppressFinalize()
C. Collect()
D. WaitForFullGCApproach()
Correct Answer: B Section: Volume A Explanation
Explanation/Reference:
# QUESTION 18
You are creating a class named Employee. The class exposes a string property named EmployeeType. The following code segment defines the Employee class. (Line numbers are included for reference only.)
The EmployeeType property value must be accessed and modified only by code within the Employee class or within a class derived from the Employee class.
You need to ensure that the implementation of the EmployeeType property meets the requirements.
Which two actions should you perform? (Each correct answer represents part of the complete solution. Choose two.)
A. Replace line 05 with the following code segment: protected get;
B. Replace line 06 with the following code segment: private set;
C. Replace line 03 with the following code segment: public string EmployeeType
D. Replace line 05 with the following code segment: private get;
 
 E. Replace line 03 with the following code segment: protected string EmployeeType
F. Replace line 06 with the following code segment: protected set;
Correct Answer: BE Section: Volume A Explanation
Explanation/Reference:
# QUESTION 19
You are implementing a method named Calculate that performs conversions between value types and reference types. The following code segment implements the method. (Line numbers are included for reference only.)
You need to ensure that the application does not throw exceptions on invalid conversions. Which code segment should you insert at line 04?
A. int balance = (int) (float)amountRef;
B. int balance = (int)amountRef;
C. int balance = amountRef;
D. int balance = (int) (double) amountRef;
Correct Answer: A Section: Volume A Explanation
Explanation/Reference: # QUESTION 20
You are creating a console application by using C#. You need to access the application assembly. Which code segment should you use?
A. Assembly.GetAssembly(this);
B. this.GetType();
C. Assembly.Load();
D. Assembly.GetExecutingAssembly();
Correct Answer: D Section: Volume A
 
 Explanation
Explanation/Reference:
Explanation:
Assembly.GetExecutingAssembly - Gets the assembly that contains the code that is currently executing. http://msdn.microsoft.com/en-us/library/system.reflection.assembly.getexecutingassembly(v=vs.110).aspx
Assembly.GetAssembly - Gets the currently loaded assembly in which the specified class is defined. http://msdn.microsoft.com/en-us/library/system.reflection.assembly.getassembly.aspx
# QUESTION 21
HOTSPOT
You are implementing a library method that accepts a character parameter and returns a string.
If the lookup succeeds, the method must return the corresponding string value. If the lookup fails, the method must return the value "invalid choice."
You need to implement the lookup algorithm.
How should you complete the relevant code? (To answer, select the correct keyword in each drop-down list in the answer area.)
Hot Area:

 Correct Answer:

 Section: Volume A Explanation

 Explanation/Reference:
Explanation: http://msdn.microsoft.com/en-us/library/06tc147t(v=vs.110).aspx
# QUESTION 22
You use the Task.Run() method to launch a long-running data processing operation. The data processing operation often fails in times of heavy network congestion.
If the data processing operation fails, a second operation must clean up any results of the first operation. You need to ensure that the second operation is invoked only if the data processing operation throws an unhandled exception.
What should you do?
A. Create a TaskCompletionSource<T> object and call the TrySetException() method of the object.
B. Create a task by calling the Task.ContinueWith() method.
C. Examine the Task.Status property immediately after the call to the Task.Run() method.
D. Create a task inside the existing Task.Run() method by using the AttachedToParent option.
Correct Answer: B Section: Volume A Explanation
Explanation/Reference:
# QUESTION 23
You are modifying an application that processes leases. The following code defines the Lease class. (Line numbers are included for reference only.)
 
 Leases are restricted to a maximum term of 5 years. The application must send a notification message if a lease request exceeds 5 years.
You need to implement the notification mechanism.
Which two actions should you perform? (Each correct answer presents part of the solution.
Choose two.)
 
  A. Option A
B. Option B
C. Option C
D. Option D
E. Option E
F. Option F
Correct Answer: AB Section: Volume A Explanation
Explanation/Reference:
# QUESTION 24
You are developing an application that uses structured exception handling. The application includes a class named ExceptionLogger.
The ExceptionLogger class implements a method named LogException by using the following code segment: public static void LogException(Exception ex)
You have the following requirements:

 Log all exceptions by using the LogException() method of the ExceptionLogger class. Rethrow the original exception, including the entire exception stack.
You need to meet the requirements. Which code segment should you use?
A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: A Section: Volume A Explanation
Explanation/Reference:
Explanation:
Once an exception is thrown, part of the information it carries is the stack trace. The stack trace is a list of the method call hierarchy that starts with the method that throws the exception and ends with the method that catches the exception. If an exception is re-thrown by specifying the exception in the throw statement, the stack trace is restarted at the current method and the list of method calls between the original method that threw the exception and the current method is lost. To keep the original stack trace information with the exception, use the throw statement without specifying the exception.
   
 http://msdn.microsoft.com/en-us/library/ms182363(v=vs.110).aspx
# QUESTION 25
You are developing an application that includes a class named UserTracker. The application includes the following code segment. (Line numbers are included for reference only.)
 You need to add a user to the UserTracker instance. What should you do?

 A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: D

 Section: Volume A Explanation
Explanation/Reference:
# QUESTION 26
DRAG DROP
You develop an application that displays information from log files when errors occur. The application will prompt the user to create an error report that sends details about the error and the session to the administrator.
When a user opens a log file by using the application, the application throws an exception and closes.
The application must preserve the original stack trace information when an exception occurs during this process.
You need to implement the method that reads the log files. You have the following code:
Which code segments should you include in Target 1 and Target 2 to complete the code? (To answer, drag the appropriate code segments to the correct locations in the answer area. Each code segment may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.)
Select and Place:
 
 Correct Answer:
Section: Volume A Explanation
Explanation/Reference:
Explanation:
StringReader - Implements a TextReader that reads from a string. http://msdn.microsoft.com/en-us/library/system.io.stringreader(v=vs.110).aspx
StreamReader - Implements a TextReader that reads characters from a byte stream in a particular encoding. http://msdn.microsoft.com/en-us/library/system.io.streamreader(v=vs.110).aspx
Once an exception is thrown, part of the information it carries is the stack trace. The stack trace is a list of the method call hierarchy that starts with the method that throws the exception and ends with the method that catches the exception. If an exception is re-thrown by specifying the exception in the throw statement, the stack trace is restarted at the current method and the list of method calls between the original method that threw the exception and the current method is lost. To keep the original stack trace information with the exception, use the throw statement without specifying the exception. http://msdn.microsoft.com/en-us/library/ms182363(v=vs.110).aspx
# QUESTION 27
DRAG DROP
You are developing an application that includes a class named Kiosk. The Kiosk class includes a static property named Catalog. The Kiosk class is defined by the following code segment. (Line numbers are included for reference only.)
     
  You have the following requirements:
Initialize the _catalog field to a Catalog instance.
Initialize the _catalog field only once.
Ensure that the application code acquires a lock only when the _catalog object must be instantiated.
You need to meet the requirements.
Which three code segments should you insert in sequence at line 09? (To answer, move the appropriate code segments from the list of code segments to the answer area and arrange them in the correct order.)
Select and Place:
   Correct Answer:
 
 Section: Volume A Explanation
Explanation/Reference:
Explanation:
After taking a lock you must check once again the _catalog field to be sure that other threads didn't instantiated it in the meantime.
# QUESTION 28
DRAG DROP
You are developing an application that will include a method named GetData. The GetData() method will retrieve several lines of data from a web service by using a System.IO.StreamReader object.
You have the following requirements:
The GetData() method must return a string value that contains the first line of the response from the web service.
The application must remain responsive while the GetData() method runs.
You need to implement the GetData() method.
How should you complete the relevant code? (To answer, drag the appropriate objects to the correct locations in the answer area. Each object may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.)
Select and Place:
 
 Correct Answer:
Section: Volume A
  
 Explanation Explanation/Reference:
# QUESTION 29
You are adding a public method named UpdateScore to a public class named ScoreCard.
The code region that updates the score field must meet the following requirements: It must be accessed by only one thread at a time.
It must not be vulnerable to a deadlock situation.
You need to implement the UpdateScore() method. What should you do?
  A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: B Section: Volume A Explanation
Explanation/Reference:
Explanation:
 
 http://blogs.msdn.com/b/bclteam/archive/2004/01/20/60719.aspx
# QUESTION 30
DRAG DROP
You are developing an application that implements a set of custom exception types. You declare the custom exception types by using the following code segments:
The application includes a function named DoWork that throws .NET Framework exceptions and custom exceptions.
The application contains only the following logging methods:
The application must meet the following requirements:
When AdventureWorksValidationException exceptions are caught, log the information by using the static void Log (AdventureWorksValidationException ex) method.
When AdventureWorksDbException or other AdventureWorksException exceptions are caught, log the information by using the static void I oq( AdventureWorksException ex) method.
You need to meet the requirements.
How should you complete the relevant code? (To answer, drag the appropriate code segments to the correct locations in the answer area. Each code segment may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.)
Select and Place:
    
 Correct Answer:
 
 Section: Volume A Explanation
Explanation/Reference:
# QUESTION 31
You are developing a C# application that has a requirement to validate some string input data by using the Regex class.
The application includes a method named ContainsHyperlink. The ContainsHyperlink() method will verify the presence of a URI and surrounding markup.
The following code segment defines the ContainsHyperlink() method. (Line numbers are included for reference only.)
The expression patterns used for each validation function are constant.
You need to ensure that the expression syntax is evaluated only once when the Regex object is initially instantiated.
  
 Which code segment should you insert at line 04?
A. Option A
B. Option B
C. Option C
D. Option D
Correct Answer: D Section: Volume A Explanation
Explanation/Reference:
Explanation:
RegexOptions.Compiled - Specifies that the regular expression is compiled to an assembly.This yields faster execution but increases startup time.This value should not be assigned to the Options property when calling the CompileToAssembly method. http://msdn.microsoft.com/en-us/library/system.text.regularexpressions.regexoptions.aspx
Additional info
http://stackoverflow.com/questions/513412/how-does-regexoptions-compiled-work
# QUESTION 32
You are developing an application by using C#.
You have the following requirements:
Support 32-bit and 64-bit system configurations.
Include pre-processor directives that are specific to the system configuration. Deploy an application version that includes both system configurations to testers. Ensure that stack traces include accurate line numbers.
You need to configure the project to avoid changing individual configuration settings every time you deploy the application to testers.
Which two actions should you perform? (Each correct answer presents part of the solution. Choose two.)
A. Update the platform target and conditional compilation symbols for each application configuration.
B. Create two application configurations based on the default Release configuration.
C. Optimize the application through address rebasing in the 64-bit configuration.
D. Create two application configurations based on the default Debug configuration.
     
 Correct Answer: BD Section: Volume A Explanation
Explanation/Reference: # QUESTION 33
You are developing a method named CreateCounters that will create performance counters for an application. The method includes the following code. (Line numbers are included for reference only.)
You need to ensure that Counter1 is available for use in Windows Performance Monitor (PerfMon). Which code segment should you insert at line 16?
A. CounterType = PerformanccCounterType.RawBase
B. CounterType = PerformanceCounterType.AverageBase
C. CounterType = PerformanceCounterType.SampleBase
D. CounterType = PerformanceCounterType.CounterMultiBase
Correct Answer: C Section: Volume A Explanation
Explanation/Reference:
Explanation:
PerformanceCounterType.SampleBase - A base counter that stores the number of sampling interrupts taken and is used as a denominator in the sampling fraction. The sampling fraction is the number of samples that were 1 (or true) for a sample interrupt. Check that this value is greater than zero before using it as the
 
 denominator in a calculation of SampleFraction.
PerformanceCounterType.SampleFraction - A percentage counter that shows the average ratio of hits to all operations during the last two sample intervals. Formula: ((N 1 - N 0) / (D 1 - D 0)) x 100, where the numerator represents the number of successful operations during the last sample interval, and the denominator represents the change in the number of all operations (of the type measured) completed during the sample interval, using counters of type SampleBase. Counters of this type include Cache\Pin Read Hits %. http://msdn.microsoft.com/en-us/library/system.diagnostics.performancecountertype.aspx
# QUESTION 34
You are developing an application that will transmit large amounts of data between a client computer and a server.
You need to ensure the validity of the data by using a cryptographic hashing algorithm. Which algorithm should you use?
A. HMACSHA256
B. RNGCryptoServiceProvider C. DES
D. Aes
Correct Answer: A Section: Volume A Explanation
Explanation/Reference:
Explanation:
The .NET Framework provides the following classes that implement hashing algorithms:
HMACSHA1. MACTripleDES. MD5CryptoServiceProvider. RIPEMD160. SHA1Managed. SHA256Managed. SHA384Managed. SHA512Managed.
HMAC variants of all of the Secure Hash Algorithm (SHA), Message Digest 5 (MD5), and RIPEMD-160 algorithms.
CryptoServiceProvider implementations (managed code wrappers) of all the SHA algorithms. Cryptography Next Generation (CNG) implementations of all the MD5 and SHA algorithms. http://msdn.microsoft.com/en-us/library/92f9ye3s.aspx#hash_values
# QUESTION 35
DRAG DROP
You are testing an application. The application includes methods named CalculateInterest and LogLine. The CalculateInterest() method calculates loan interest. The LogLine() method sends diagnostic messages to a console window.
You have the following requirements:
The CalculateInterest() method must run for all build configurations. The LogLine() method must be called only for debug builds.
You need to ensure that the methods run correctly.
How should you complete the relevant code? (To answer, drag the appropriate code segments to the correct locations in the answer area. Each code segment may be used once, more than once, or not at all. You may
          
 need to drag the split bar between panes or scroll to view content.)
Select and Place:
Correct Answer:
Section: Volume A Explanation
Explanation/Reference:
# QUESTION 36
You are developing an assembly that will be used by multiple applications.
You need to install the assembly in the Global Assembly Cache (GAC).
Which two actions can you perform to achieve this goal? (Each correct answer presents a complete solution. Choose two.)
  
 A. Use the Assembly Registration tool (regasm.exe) to register the assembly and to copy the assembly to the GAC.
B. Use the Strong Name tool (sn.exe) to copy the assembly into the GAC.
C. Use Microsoft Register Server (regsvr32.exe) to add the assembly to the GAC.
D. Use the Global Assembly Cache tool (gacutil.exe) to add the assembly to the GAC.
E. Use Windows Installer 2.0 to add the assembly to the GAC.
Correct Answer: DE Section: Volume A Explanation
Explanation/Reference:
Explanation:
There are two ways to deploy an assembly into the global assembly cache:
Use an installer designed to work with the global assembly cache. This is the preferred option for installing assemblies into the global assembly cache.
Use a developer tool called the Global Assembly Cache tool (Gacutil.exe), provided by the Windows
Software Development Kit (SDK).
Note:
In deployment scenarios, use Windows Installer 2.0 to install assemblies into the global assembly cache. Use the Global Assembly Cache tool only in development scenarios, because it does not provide assembly reference counting and other features provided when using the Windows Installer. http://msdn.microsoft.com/en-us/library/yf1d93sz%28v=vs.110%29.aspx
# QUESTION 37
You are debugging an application that calculates loan interest. The application includes the following code. (Line numbers are included for reference only.)
You need to ensure that the debugger breaks execution within the CalculateInterest() method when the loanAmount variable is less than or equal to zero in all builds of the application.
What should you do?
A. Insert the following code segment at line 03: Trace.Assert(loanAmount > 0);
B. Insert the following code segment at line 03: Debug.Assert(loanAmount > 0);
C. Insert the following code segment at line 05: Debug.Write(loanAmount > 0);
D. Insert the following code segment at line 05: Trace.Write(loanAmount > 0);
Correct Answer: A Section: Volume A
 
 Explanation
Explanation/Reference:
Explanation:
By default, the Debug.Assert method works only in debug builds. Use the Trace.Assert method if you want to do assertions in release builds. For more information, see Assertions in Managed Code. http:// msdn.microsoft.com/en-us/library/kssw4w7z.aspx
# QUESTION 38
You are developing an application that accepts the input of dates from the user.
Users enter the date in their local format. The date entered by the user is stored in a string variable named inputDate. The valid date value must be placed in a DateTime variable named validatedDate.
You need to validate the entered date and convert it to Coordinated Universal Time (UTC). The code must not cause an exception to be thrown.
Which code segment should you use?
A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: A Section: Volume A Explanation
Explanation/Reference:
Explanation:
AdjustToUniversal parses s and, if necessary, converts it to UTC.
 
 Note: The DateTime.TryParse method converts the specified string representation of a date and time to its DateTime equivalent using the specified culture-specific format information and formatting style, and returns a value that indicates whether the conversion succeeded.
# QUESTION 39
DRAG DROP
You are developing an application by using C#. The application will process several objects per second.
You need to create a performance counter to analyze the object processing.
Which three actions should you perform in sequence? (To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.)
Select and Place:
Correct Answer:
 
 Section: Volume A Explanation
Explanation/Reference:
Explanation:
CounterCreationDataCollection counterDataCollection = new CounterCreationDataCollection(); // Box1 // Add the counter. Box 1
CounterCreationData averageCount64 = new CounterCreationData();
averageCount64.CounterType = PerformanceCounterType.AverageCount64; averageCount64.CounterName = "AverageCounter64Sample"; counterDataCollection.Add(averageCount64);
// Add the base counter.
CounterCreationData averageCount64Base = new CounterCreationData(); averageCount64Base.CounterType = PerformanceCounterType.AverageBase; averageCount64Base.CounterName = "AverageCounter64SampleBase"; counterDataCollection.Add(averageCount64Base); // Box 2
// Create the category. Box 3 PerformanceCounterCategory.Create("AverageCounter64SampleCategory",
"Demonstrates usage of the AverageCounter64 performance counter type.", PerformanceCounterCategoryType.SingleInstance, counterDataCollection);
# QUESTION 40
You are developing an application by using C#. You provide a public key to the development team during development.
You need to specify that the assembly is not fully signed when it is built.
Which two assembly attributes should you include in the source code? (Each correct answer presents part of the solution. Choose two.)
A. AssemblyKeyNameAttribute
 
 B. ObfuscateAssemblyAttribute C. AssemblyDelaySignAttribute D. AssemblyKeyFileAttribute
Correct Answer: CD Section: Volume A Explanation
Explanation/Reference:
Explanation: http://msdn.microsoft.com/en-us/library/t07a3dye(v=vs.110).aspx
# QUESTION 41
DRAG DROP
You are developing an application that includes a class named Warehouse. The Warehouse class includes a static property named Inventory- The Warehouse class is defined by the following code segment. (Line numbers are included for reference only.)
You have the following requirements:
Initialize the _inventory field to an Inventory instance.
Initialize the _inventory field only once.
Ensure that the application code acquires a lock only when the _inventory object must be instantiated.
You need to meet the requirements.
Which three code segments should you insert in sequence at line 09? (To answer, move the appropriate code segments from the list of code segments to the answer area and arrange them in the correct order.)
Select and Place:
    
 Correct Answer:
Section: Volume A Explanation
Explanation/Reference:
Explanation:
After taking a lock you must check once again the _inventory field to be sure that other threads didn't instantiated it in the meantime.
# QUESTION 42
You are adding a public method named UpdateGrade to a public class named ReportCard.
The code region that updates the grade field must meet the following requirements: It must be accessed by only one thread at a time.
It must not be vulnerable to a deadlock situation.
    
 You need to implement the UpdateGrade() method. What should you do?
A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: A Section: Volume A Explanation
Explanation/Reference:
# QUESTION 43
You are developing an application that includes a class named BookTracker for tracking library books. The application includes the following code segment. (Line numbers are included for reference only.)
 
  You need to add a user to the BookTracker instance. What should you do?

 A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: B Section: Volume A

 Explanation Explanation/Reference:
# QUESTION 44
DRAG DROP
You are implementing a method that creates an instance of a class named User. The User class contains a public event named Renamed. The following code segment defines the Renamed event:
Public event EventHandler<RenameEventArgs> Renamed;
You need to create an event handler for the Renamed event by using a lambda expression.
How should you complete the relevant code? (To answer, drag the appropriate code segments to the correct locations in the answer area. Each code segment may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.)
Select and Place:
Correct Answer:
 
 Section: Volume A Explanation
Explanation/Reference: # QUESTION 45
You are creating a console application by using C#.
You need to access the assembly found in the file named car.dll. Which code segment should you use?
A. Assembly.Load();
B. Assembly.GetExecutingAssembly(); C. This.GetType();
D. Assembly.LoadFile("car.dll");
Correct Answer: D
 
 Section: Volume A Explanation
Explanation/Reference:
Explanation:
Assembly.LoadFile - Loads the contents of an assembly file on the specified path. http://msdn.microsoft.com/en-us/library/b61s44e8.aspx
# QUESTION 46
You are developing an application by using C#.
The application includes an object that performs a long running process.
You need to ensure that the garbage collector does not release the object's resources until the process completes.
Which garbage collector method should you use?
A. WaitForFullGCComplete() B. WaitForFullGCApproach() C. KeepAlive()
D. WaitForPendingFinalizers()
Correct Answer: C Section: Volume A Explanation
Explanation/Reference:
The GC.KeepAlive method references the specified object, which makes it ineligible for garbage collection from the start of the current routine to the point where this method is called.
The purpose of the KeepAlive method is to ensure the existence of a reference to an object that is at risk of being prematurely reclaimed by the garbage collector.
The KeepAlive method performs no operation and produces no side effects other than extending the lifetime of the object passed in as a parameter.
# QUESTION 47
An application includes a class named Person. The Person class includes a method named GetData.
You need to ensure that the GetData() method can be used only by the Person class and not by any class derived from the Person class.
Which access modifier should you use for the GetData() method?
A. Public
B. Protected internal
C. Internal
D. Private
E. Protected
Correct Answer: D Section: Volume A Explanation
Explanation/Reference:
Explanation:
The GetData() method should be private. It would then only be visible within the Person class.
# QUESTION 48

 You are creating an application that manages information about your company's products. The application includes a class named Product and a method named Save.
The Save() method must be strongly typed. It must allow only types inherited from the Product class that use a constructor that accepts no parameters.
You need to implement the Save() method. Which code segment should you use?
A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: D Section: Volume A Explanation
Explanation/Reference:
Explanation:
When you define a generic class, you can apply restrictions to the kinds of types that client code can use for type arguments when it instantiates your class. If client code tries to instantiate your class by using a type that is not allowed by a constraint, the result is a compile-time error. These restrictions are called constraints. Constraints are specified by using the where contextual keyword. http://msdn.microsoft.com/en-us/library/d5x73970.aspx
# QUESTION 49
DRAG DROP
You are developing an application by using C#. The application will output the text string "First Line" followed by the text string "Second Line".
 
 You need to ensure that an empty line separates the text strings.
Which four code segments should you use in sequence? (To answer, move the appropriate code segments to the answer area and arrange them in the correct order.)
Select and Place:
Correct Answer:
Section: Volume A Explanation
  
 Explanation/Reference:
Box 1:
First we create the variable. Box 2:
We create the first text line. Box 3:
We add a blank line.
The StringBuilder.AppendLine method appends the default line terminator to the end of the current StringBuilder object.
Box 4:
Finally we add the second line.
# QUESTION 50
You are developing an application. The application includes classes named Mammal and Animal and an interface named IAnimal.
The Mammal class must meet the following requirements:
It must either inherit from the Animal class or implement the IAnimal interface. It must be inheritable by other classes in the application.
You need to ensure that the Mammal class meets the requirements.
Which two code segments can you use to achieve this goal? (Each correct answer presents a complete solution. Choose two.)
      
  A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: AC Section: Volume A Explanation
Explanation/Reference:
Explanation:
When applied to a class, the sealed modifier prevents other classes from inheriting from it. http://msdn.microsoft.com/en-us/library/88c54tsw(v=vs.110).aspx
# QUESTION 51
DRAG DROP
You are developing a class named ExtensionMethods.
You need to ensure that the ExtensionMethods class implements the IsEmail() extension method on string objects.
How should you complete the relevant code? (To answer, drag the appropriate code segments to the correct locations in the answer area. Each code segment may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.)
Select and Place:

 Correct Answer:
Section: Volume A Explanation
Explanation/Reference:
# QUESTION 52
You are developing an application by using C#. The application includes the following code segment. (Line numbers are included for reference only.)
  
  The DoWork() method must throw an InvalidCastException exception if the obj object is not of type IDataContainer when accessing the Data property.
You need to meet the requirements. Which code segment should you insert at line 07?
A. var dataContainer = (IDataContainer) obj;
B. var dataContainer = obj as IDataContainer;
C. var dataContainer = obj is IDataContainer; D. dynamic dataContainer = obj;
Correct Answer: A Section: Volume A Explanation
Explanation/Reference:
Explanation: http://msdn.microsoft.com/en-us/library/ms173105.aspx
# QUESTION 53
An application receives JSON data in the following format:
The application includes the following code segment. (Line numbers are included for reference only.)
 
  You need to ensure that the ConvertToName() method returns the JSON input string as a Name object. Which code segment should you insert at line 10?
A. Return ser.Desenalize (json, typeof(Name));
B. Return ser.ConvertToType<Name>(json);
C. Return ser.Deserialize<Name>(json);
D. Return ser.ConvertToType (json, typeof (Name));
Correct Answer: C Section: Volume A Explanation
Explanation/Reference:
# QUESTION 54
You are developing an application that includes the following code segment. (Line numbers are included for reference only.)

 The GetCustomers() method must meet the following requirements:
Connect to a Microsoft SQL Server database.
Populate Customer objects with data from the database.
Return an IEnumerable<Customer> collection that contains the populated Customer objects.
You need to meet the requirements.
Which two actions should you perform? (Each correct answer presents part of the solution. Choose two.)
A. Insert the following code segment at line 17: while (sqlDataReader.GetValues())
B. Insert the following code segment at line 14: sqlConnection.Open();
C. Insert the following code segment at line 14: sqlConnection.BeginTransaction();
D. Insert the following code segment at line 17: while (sqlDataReader.Read())
E. Insert the following code segment at line 17: while (sqlDataReader.NextResult())
Correct Answer: BD Section: Volume A
    
 Explanation
Explanation/Reference:
Explanation:
SqlConnection.Open - Opens a database connection with the property settings specified by the ConnectionString. http://msdn.microsoft.com/en-us/library/system.data.sqlclient.sqlconnection.open.aspx SqlDataReader.Read - Advances the SqlDataReader to the next record. http://msdn.microsoft.com/en-us/library/system.data.sqlclient.sqldatareader.read.aspx
# QUESTION 55
DRAG DROP
You are developing an application that includes a class named Customer.
The application will output the Customer class as a structured XML document by using the following code segment:
You need to ensure that the Customer class will serialize to XML.
How should you complete the relevant code? (To answer, drag the appropriate code segments to the correct locations in the answer area. Each code segment may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.)
Select and Place:
 
 Correct Answer:
 
 Section: Volume A Explanation
Explanation/Reference:
 
 Explanation: http://msdn.microsoft.com/en-us/library/3dkta8ya.aspx
# QUESTION 56
An application will upload data by using HTML form-based encoding. The application uses a method named SendMessage.
The SendMessage() method includes the following code. (Line numbers are included for reference only.)
The receiving URL accepts parameters as form-encoded values.
You need to send the values intA and intB as form-encoded values named a and b, respectively. Which code segment should you insert at line 04?
 A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: D Section: Volume A Explanation
Explanation/Reference:
Explanation:
WebClient.UploadValuesTaskAsync - Uploads the specified name/value collection to the resource identified by the specified URI as an asynchronous operation using a task object. These methods do not block the calling thread.
http://msdn.microsoft.com/en-us/library/system.net.webclient.uploadvaluestaskasync.aspx
# QUESTION 57
You are developing an application. The application converts a Location object to a string by using a method
  
 named WriteObject.
The WriteObject() method accepts two parameters, a Location object and an XmlObjectSerializer object.
The application includes the following code. (Line numbers are included for reference only.)
You need to serialize the Location object as XML. Which code segment should you insert at line 20?
A. new XmlSerializer(typeof(Location))
B. new NetDataContractSerializer()
C. new DataContractJsonSerializer(typeof (Location)) D. new DataContractSerializer(typeof(Location))
Correct Answer: D Section: Volume A Explanation
Explanation/Reference:
Explanation:
The code is using [DataContract] attribute here so need to used DataContractSerializer class.
# QUESTION 58
You are developing an application that includes a class named Order. The application will store a collection of Order objects.
The collection must meet the following requirements:
Internally store a key and a value for each collection item. Provide objects to iterators in ascending order based on the key.
   
 Ensure that item are accessible by zero-based index or by key. You need to use a collection type that meets the requirements. Which collection type should you use?
A. LinkedList B. Queue
C. Array
D. HashTable E. SortedList
Correct Answer: E Section: Volume A Explanation
Explanation/Reference:
Explanation:
SortedList<TKey, TValue> - Represents a collection of key/value pairs that are sorted by key based on the associated IComparer<T> implementation.
http://msdn.microsoft.com/en-us/library/ms132319.aspx
# QUESTION 59
You are developing an application that includes the following code segment. (Line numbers are included for reference only.)
 
 You need to ensure that the application accepts only integer input and prompts the user each time non-integer input is entered.
Which code segment should you add at line 19?
A. If (!int.TryParse(sLine, out number))
B. If ((number = Int32.Parse(sLine)) == Single.NaN)
C. If ((number = int.Parse(sLine)) > Int32.MaxValue) D. If (Int32.TryParse(sLine, out number))
Correct Answer: A Section: Volume A Explanation
Explanation/Reference:
Explanation:
B and C will throw exception when user enters non-integer value. D is exactly the opposite what we want to achieve.
Int32.TryParse - Converts the string representation of a number to its 32-bit signed integer equivalent. A return value indicates whether the conversion succeeded.
 
 http://msdn.microsoft.com/en-us/library/f02979c7.aspx
# QUESTION 60
You are debugging an application that calculates loan interest. The application includes the following code. (Line numbers are included for reference only.)
You have the following requirements:
The debugger must break execution within the Calculatelnterest() method when the loanAmount variable is less than or equal to zero.
The release version of the code must not be impacted by any changes.
You need to meet the requirements.
What should you do?
A. Insert the following code segment at tine 05: Debug.Write(loanAmount > 0);
B. Insert the following code segment at line 05: Trace.Write(loanAmount > 0);
C. Insert the following code segment at line 03: Debug.Assert(loanAmount > 0);
D. Insert the following code segment at line 03: Trace.Assert(loanAmount > 0);
Correct Answer: C Section: Volume A Explanation
Explanation/Reference:
Explanation:
By default, the Debug.Assert method works only in debug builds. Use the Trace.Assert method if you want to do assertions in release builds. For more information, see Assertions in Managed Code. http://msdn.microsoft.com/en-us/library/kssw4w7z.aspx
# QUESTION 61
You are developing an application that will process orders. The debug and release versions of the application will display different logo images.
You need to ensure that the correct image path is set based on the build configuration. Which code segment should you use?
   
  A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: C Section: Volume A Explanation
Explanation/Reference:
Explanation:
There is no such constraint (unless you define one explicitly) RELEASE. http://stackoverflow.com/questions/507704/will-if-release-work-like-if-debug-does-in-c
# QUESTION 62
You are testing an application. The application includes methods named CalculateInterest and LogLine. The CalculateInterest() method calculates loan interest. The LogLine() method sends diagnostic messages to a console window.
The following code implements the methods. (Line numbers are included for reference only.)

 You have the following requirements:
The Calculatelnterest() method must run for all build configurations. The LogLine() method must run only for debug builds.
You need to ensure that the methods run correctly.
What are two possible ways to achieve this goal? (Each correct answer presents a complete solution. Choose two.)
A. Insert the following code segment at line 01: #region DEBUG
Insert the following code segment at line 10: #endregion
B. Insert the following code segment at line 10: [Conditional(MDEBUG")]
C. Insert the following code segment at line 05: #region DEBUG
Insert the following code segment at line 07: #endregion
D. Insert the following code segment at line 01: #if DE30G
Insert the following code segment at line 10: #endif
E. Insert the following code segment at line 01: [Conditional(MDEBUG")]
F. Insert the following code segment at line 05: #if DEBUG
Insert the following code segment at line 07: #endif
G. Insert the following code segment at line 10: [Conditional("RELEASE")]
Correct Answer: BF Section: Volume A Explanation
Explanation/Reference:
   
 Explanation:
#if DEBUG: The code in here won't even reach the IL on release.
[Conditional("DEBUG")]: This code will reach the IL, however the calls to the method will not execute unless DEBUG is on.
http://stackoverflow.com/questions/3788605/if-debug-vs-conditionaldebug
# QUESTION 63
You are developing a method named CreateCounters that will create performance counters for an application. The method includes the following code. (Line numbers are included for reference only.)
You need to ensure that Counter2 is available for use in Windows Performance Monitor (PerfMon). Which code segment should you insert at line 16?
A. CounterType = PerformanceCounterType.RawBase
B. CounterType = PerformanceCounterType.AverageBase
C. CounterType = PerformanceCounterType.SampleBase
D. CounterType = PerformanceCounterType.CounterMultiBase
Correct Answer: D Section: Volume A Explanation
Explanation/Reference:
Explanation:
PerformanceCounterType.AverageTimer32 - An average counter that measures the time it takes, on average, to complete a process or operation. Counters of this type display a ratio of the total elapsed time of the sample interval to the number of processes or operations completed during that time. This counter type measures time in ticks of the system clock. Formula: ((N 1 -N 0)/F)/ (B 1 -B 0), where N 1 and N 0 are performance counter readings, B 1 and B 0 are their corresponding AverageBase values, and F is the number of ticks per second. The value of F is factored into the equation so that the result can be displayed in seconds.
Thus, the numerator represents the numbers of ticks counted during the last sample interval, F represents the frequency of the ticks, and the denominator represents the number of operations completed during the last sample interval. Counters of this type include PhysicalDisk\ Avg. Disk sec/Transfer. PerformanceCounterType.AverageBase - A base counter that is used in the calculation of time or count
 
 averages, such as AverageTimer32 and AverageCount64. Stores the denominator for calculating a counter to present "time per operation" or "count per operation".. http://msdn.microsoft.com/en-us/library/system.diagnostics.performancecountertype.aspx
# QUESTION 64
You are developing an application that will transmit large amounts of data between a client computer and a server. You need to ensure the validity of the data by using a cryptographic hashing algorithm. Which algorithm should you use?
A. ECDsa
B. RNGCryptoServiceProvider C. Rfc2898DeriveBytes
D. HMACSHA512
Correct Answer: D Section: Volume A Explanation
Explanation/Reference:
# QUESTION 65
You are developing an application by using C#.
The application includes an object that performs a long running process.
You need to ensure that the garbage collector does not release the object's resources until the process completes.
Which garbage collector method should you use?
A. WaitForFullGCComplete() B. SuppressFinalize()
C. collect()
D. RemoveMemoryPressure()
Correct Answer: B Section: Volume A Explanation
Explanation/Reference:
# QUESTION 66
You are implementing a method named FloorTemperature that performs conversions between value types and reference types. The following code segment implements the method. (Line numbers are included for reference only.)
You need to ensure that the application does not throw exceptions on invalid conversions. Which code segment should you insert at line 04?
 
 A. int result = (int)degreesRef;
B. int result = (int)(double)degreesRef;
C. int result = degreesRef;
D. int result = (int)(float)degreesRef;
Correct Answer: D Section: Volume A Explanation
Explanation/Reference:
# QUESTION 67
You are developing an application by using C#.
The application includes an object that performs a long running process.
You need to ensure that the garbage collector does not release the object's resources until the process completes.
Which garbage collector method should you use?
A. WaitForFullGCComplete() B. SuppressFinalize()
C. WaitForFullGCApproach() D. WaitForPendingFinalizers()
Correct Answer: B Section: Volume A Explanation
Explanation/Reference:
# QUESTION 68
DRAG DROP
You are developing an application that implements a set of custom exception types. You declare the custom exception types by using the following code segments:
The application includes a function named DoWork that throws .NET Framework exceptions and custom exceptions. The application contains only the following logging methods:
The application must meet the following requirements:
When ContosoValidationException exceptions are caught, log the information by using the static void Log (ContosoValidationException ex) method.
When ContosoDbException or other ContosoException exceptions are caught, log the information by using the static void Log(ContosoException ex) method.
    
 You need to meet the requirements.
How should you complete the relevant code? (To answer, drag the appropriate code segments to the correct locations in the answer area. Each code segment may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.)
Select and Place:
Correct Answer:
 
 Section: Volume A Explanation
Explanation/Reference:
# QUESTION 69
You are developing an application that uses structured exception handling. The application includes a class named Logger. The Logger class implements a method named Log by using the following code segment:
public static void Log(Exception ex) { }
You have the following requirements:
Log all exceptions by using the Log() method of the Logger class. Rethrow the original exception, including the entire exception stack.
You need to meet the requirements. Which code segment should you use?
   
  A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: D Section: Volume A Explanation
Explanation/Reference:
# QUESTION 70
DRAG DROP
You are developing an application that will include a method named GetData. The GetData() method will retrieve several lines of data from a web service by using a System.IO.StreamReader object.
You have the following requirements:
The GetData() method must return a string value that contains the entire response from the web service. The application must remain responsive while the GetData() method runs.
You need to implement the GetData() method.
How should you complete the relevant code? (To answer, drag the appropriate objects to the correct locations in the answer area. Each object may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.)
  Select and Place:

 Correct Answer:
Section: Volume A Explanation
Explanation/Reference:
  
 # QUESTION 71
You are developing an application that includes a class named BookTracker for tracking library books. The application includes the following code segment. (Line numbers are included for reference only.)
You need to add a book to the BookTracker instance. What should you do?
 
 A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: A Section: Volume A

 Explanation Explanation/Reference:
# QUESTION 72
You use the Task.Run() method to launch a long-running data processing operation. The data processing operation often fails in times of heavy network congestion.
If the data processing operation fails, a second operation must clean up any results of the first operation.
You need to ensure that the second operation is invoked only if the data processing operation throws an unhandled exception.
What should you do?
A. Create a task within the operation, and set the Task.StartOnError property to true.
B. Create a TaskFactory object and call the ContinueWhenAll() method of the object.
C. Create a task by calling the Task.ContinueWith() method.
D. Use the TaskScheduler class to create a task and call the TryExecuteTask() method on the class.
Correct Answer: C Section: Volume A Explanation
Explanation/Reference:
Explanation:
Task.ContinueWith - Creates a continuation that executes asynchronously when the target Task completes.The returned Task will not be scheduled for execution until the current task has completed, whether it completes due to running to completion successfully, faulting due to an unhandled exception, or exiting out early due to being canceled.
http://msdn.microsoft.com/en-us/library/dd270696.aspx
# QUESTION 73
You are developing an application by using C#. You provide a public key to the development team during development.
You need to specify that the assembly is not fully signed when it is built.
Which two assembly attributes should you include in the source code? (Each correct answer presents part of the solution. Choose two.)
A. AssemblyFlagsAttribute
B. AssemblyKeyFileAttribute
C. AssemblyConfigurationAttribute D. AssemblyDelaySignAttribute
Correct Answer: BD Section: Volume A Explanation
Explanation/Reference:
# QUESTION 74
You are developing an application that will transmit large amounts of data between a client computer and a server. You need to ensure the validity of the data by using a cryptographic hashing algorithm. Which algorithm

 should you use?
A. RSA
B. HMACSHA2S6
C. Aes
D. RNGCryptoServiceProvider
Correct Answer: B Section: Volume A Explanation
Explanation/Reference:
# QUESTION 75
You are developing an application that uses the Microsoft ADO.NET Entity Framework to retrieve order information from a Microsoft SQL Server database. The application includes the following code. (Line numbers are included for reference only.)
The application must meet the following requirements:
Return only orders that have an OrderDate value other than null.
Return only orders that were placed in the year specified in the year parameter.
You need to ensure that the application meets the requirements. Which code segment should you insert at line 08?
A. Option A
B. Option B
C. Option C
    
 D. Option D
Correct Answer: B Section: Volume A Explanation
Explanation/Reference:
# QUESTION 76
You are creating an application that manages information about your company's products. The application includes a class named Product and a method named Save.
The Save() method must be strongly typed. It must allow only types inherited from the Product class that use a constructor that accepts no parameters.
You need to implement the Save() method. Which code segment should you use?
A. Option A
B. Option B
C. Option C
D. Option D
Correct Answer: D Section: Volume A Explanation
 Explanation/Reference:

 # QUESTION 77
You are creating a class named Employee. The class exposes a string property named EmployeeType. The following code segment defines the Employee class. (Line numbers are included for reference only.)
The EmployeeType property value must meet the following requirements:
The value must be accessed only by code within the Employee class or within a class derived from the Employee class.
The value must be modified only by code within the Employee class.
You need to ensure that the implementation of the EmployeeType property meets the requirements.
Which two actions should you perform? (Each correct answer represents part of the complete solution. Choose two.)
A. Replace line 03 with the following code segment: public string EmployeeType
B. Replace line 06 with the following code segment: protected set;
C. Replace line 05 with the following code segment: private get;
D. Replace line 05 with the following code segment: protected get;
E. Replace line 03 with the following code segment: protected string EmployeeType
F. Replace line 06 with the following code segment: private set;
Correct Answer: EF Section: Volume A Explanation
Explanation/Reference:
# QUESTION 78
You are developing an application by using C#.
The application includes an object that performs a long running process.
You need to ensure that the garbage collector does not release the object's resources until the process completes.
Which garbage collector method should you use?
A. RemoveMemoryPressure() B. ReRegisterForFinalize()
C. WaitForFullGCComplete()
   
 D. KeepAlive()
Correct Answer: D Section: Volume A Explanation
Explanation/Reference:
# QUESTION 79
You are developing an application that will transmit large amounts of data between a client computer and a server. You need to ensure the validity of the data by using a cryptographic hashing algorithm. Which algorithm should you use?
A. RSA
B. Aes
C. HMACSHA256 D. DES
Correct Answer: C Section: Volume A Explanation
Explanation/Reference:
# QUESTION 80
DRAG DROP
You are developing an application by using C#. The application will process several objects per second.
You need to create a performance counter to analyze the object processing.
Which three actions should you perform in sequence? (To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.)
Select and Place:

 Correct Answer:
 
 Section: Volume A Explanation
Explanation/Reference:
Note:
: Example:
CounterCreationDataCollection counterDataCollection = new CounterCreationDataCollection(); // Box1
// Add the counter. Box 1
CounterCreationData averageCount64 = new CounterCreationData(); averageCount64.CounterType = PerformanceCounterType.AverageCount64; averageCount64.CounterName = "AverageCounter64Sample"; counterDataCollection.Add(averageCount64);
// Add the base counter.
CounterCreationData averageCount64Base = new CounterCreationData();
 
 averageCount64Base.CounterType = PerformanceCounterType.AverageBase; averageCount64Base.CounterName = "AverageCounter64SampleBase"; counterDataCollection.Add(averageCount64Base); // Box 2
// Create the category. Box 3 PerformanceCounterCategory.Create("AverageCounter64SampleCategory",
"Demonstrates usage of the AverageCounter64 performance counter type.", PerformanceCounterCategoryType.SingleInstance, counterDataCollection);
# QUESTION 81
You are developing an application. The application calls a method that returns an array of integers named customerIds. You define an integer variable named customerIdToRemove and assign a value to it. You declare an array named filteredCustomerIds.
You have the following requirements.
Remove duplicate integers from the customerIds array.
Sort the array in order from the highest value to the lowest value.
Remove the integer value stored in the customerIdToRemove variable from the customerIds array.
You need to create a LINQ query to meet the requirements. Which code segment should you use?
   A. Option A
B. Option B
C. Option C
D. Option D
Correct Answer: C Section: Volume A Explanation
Explanation/Reference:
# QUESTION 82
You are developing an application that will transmit large amounts of data between a client computer and a server. You need to ensure the validity of the data by using a cryptographic hashing algorithm. Which algorithm should you use?
A. DES
 
 B. HMACSHA512
C. RNGCryptoServiceProvider D. ECDsa
Correct Answer: B Section: Volume A Explanation
Explanation/Reference:
# QUESTION 83
You are developing a C# application that includes a class named Product. The following code segment defines the Product class:
You implement System.ComponentModel.DataAnnotations.IValidateableObject interface to provide a way to validate the Product object.
The Product object has the following requirements:
The Id property must have a value greater than zero.
The Name property must have a value other than empty or null.
You need to validate the Product object. Which code segment should you use?
   
 A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: B Section: Volume A Explanation
Explanation/Reference:
# QUESTION 84
DRAG DROP
You have the following class:
 
  You need to implement IEquatable. The Equals method must return true if both ID and Name are set to the identical values. Otherwise, the method must return false. Equals must not throw an exception.
What should you do? (Develop the solution by selecting and ordering the required code snippets. You may not need all of the code snippets.)
Select and Place:
Correct Answer:
 
 Section: Volume A Explanation
Explanation/Reference:
# QUESTION 85
HOTSPOT
You are reviewing the following code:
 
  For each of the following statements, select Yes if the statement is true. Otherwise, select No.
Hot Area:
 Correct Answer:

  Section: Volume A Explanation
Explanation/Reference:
# QUESTION 86
HOTSPOT
You have the following code:

  To answer, complete each statement according to the information presented in the code.
Hot Area:
 Correct Answer:

  Section: Volume A Explanation
Explanation/Reference:
# QUESTION 87
HOTSPOT
You have the following code:

  For each of the following statements, select Yes if the statement is true. Otherwise, select No.
Hot Area:
Correct Answer:
 
  Section: Volume A Explanation
Explanation/Reference:
Note:
* The System.Runtime.Serialization namespace contains classes that can be used for serializing and deserializing objects. Serialization is the process of converting an object or a graph of objects into a linear sequence of bytes for either storage or transmission to another location. Deserialization is the process of taking in stored information and recreating objects from it.
* EmitDefaultValue
DataMemberAttribute.EmitDefaultValue Property
Gets or sets a value that specifies whether to serialize the default value for a field or property being serialized. true if the default value for a member should be generated in the serialization stream; otherwise, false.
# QUESTION 88
DRAG DROP
You have a method named GetCustomerIDs that returns a list of integers. Each entry in the list represents a customer ID that is retrieved from a list named Customers. The Customers list contains 1,000 rows.
Another developer creates a method named ValidateCustomer that accepts an integer parameter and returns a Boolean value. ValidateCustomer returns true if the integer provided references a valid customer. ValidateCustomer can take up to one second to run.
You need to create a method that returns a list of valid customer IDs. The code must execute in the shortest amount of time.
What should you do? (Develop the solution by selecting and ordering the required code snippets. You may not need all of the code snippets.)
Select and Place:

 Correct Answer:
 
 Section: Volume A Explanation
Explanation/Reference:
Note:
* ParallelEnumerable.AsParallel Method
Enables parallelization of a query.
/ We parallelize the exution of the ValidateCustomer instances.
# QUESTION 89
You are creating a class named Game.
 
 The Game class must meet the following requirements:
Include a member that represents the score for a Game instance. Allow external code to assign a value to the score member.
Restrict the range of values that can be assigned to the score member.
You need to implement the score member to meet the requirements. In which form should you implement the score member?
A. protected field
B. public static field
C. public static property D. public property
Correct Answer: D Section: Volume A Explanation
Explanation/Reference: # QUESTION 90
You have a List object that is generated by executing the following code:
You have a method that contains the following code (line numbers are included for reference only):
    You need to alter the method to use a lambda statement. How should you rewrite lines 03 through 06 of the method?
 
  A. Option A
B. Option B
C. Option C
D. Option D
Correct Answer: C Section: Volume A Explanation
Explanation/Reference: # QUESTION 91
You are developing code for a class named Account. The Account class includes the following method:
You need to ensure that overflow exceptions are thrown when there is an error. Which type of block should you use?
A. checked B. try
C. using
D. unchecked
Correct Answer: A Section: Volume A Explanation
Explanation/Reference:
# QUESTION 92
You are developing an application that uses a .config file.
 
 The relevant portion of the .config file is shown as follows:
 You need to ensure that diagnostic data for the application writes to the event tog by using the configuration specified in the .config file.
What should you include in the application code?
 A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: D Section: Volume A Explanation
Explanation/Reference:
# QUESTION 93
You have the following code (line numbers are included for reference only):

  You need to identify the missing line of code at line 15. Which line of code should you identify?
A. using (fooSqlConn.BeginTransaction())
B. while (fooSqlReader.Read())
C. while (fooSqlReader.NextResult()) D. while (fooSqlReader.GetBoolean(0))
Correct Answer: B Section: Volume A Explanation
Explanation/Reference:
# QUESTION 94
HOTSPOT
You are developing an application in C#.
The application will display the temperature and the time at which the temperature was recorded. You have the following method (line numbers are included for reference only):

  You need to ensure that the message displayed in the lblMessage object shows the time formatted according to the following requirements:
The time must be formatted as hour:minute AM/PM, for example 2:00 PM.
The date must be formatted as month/day/year, for example 04/21/2013.
The temperature must be formatted to have two decimal places, for example 23-45.
Which code should you insert at line 04? (To answer, select the appropriate options in the answer area.)
Hot Area:
   Correct Answer:
Section: Volume A Explanation
Explanation/Reference:
# QUESTION 95
HOTSPOT
You are developing an application that includes a Windows Communication Foundation (WCF) service. The service includes a custom TraceSource object named ts and a method named DoWork. The application must meet the following requirements:
Collect trace information when the DoWork() method executes.
Group all traces for a single execution of the DoWork() method as an activity that can be viewed in the WCF Service Trace Viewer Tool.
  You need to ensure that the application meets the requirements.
  
 How should you complete the relevant code? (To answer, select the correct code segment from each drop- down list in the answer area.)
Hot Area:

 Correct Answer:
Section: Volume A

 Explanation Explanation/Reference:
# QUESTION 96
DRAG DROP
You are developing a class named Temperature.
You need to ensure that collections of Temperature objects are sortable.
How should you complete the relevant code segment? (To answer, drag the appropriate code segments to the correct locations in the answer area. Each code segment may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.)
Select and Place:

 Correct Answer:
 
 Section: Volume A Explanation
Explanation/Reference:
# QUESTION 97
DRAG DROP
 
 You are developing an application that will populate an extensive XML tree from a Microsoft SQL Server 2008 R2 database table named Contacts.
You are creating the XML tree. The solution must meet the following requirements: Minimize memory requirements.
Maximize data processing speed.
You open the database connection. You need to create the XML tree.
How should you complete the relevant code? (To answer, drag the appropriate code segments to the correct locations in the answer area. Each code segment may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.)
Select and Place:
  Correct Answer:
 
 Section: Volume A Explanation
Explanation/Reference:
# QUESTION 98
DRAG DROP
You are creating a class named Data that includes a dictionary object named _data.
You need to allow the garbage collection process to collect the references of the _data object.
How should you complete the relevant code? (To answer, drag the appropriate code segments to the correct locations in the answer area. Each code segment may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.)
Select and Place:
 
 Correct Answer:
Section: Volume A Explanation
Explanation/Reference:
# QUESTION 99
You are creating a console application named App1.
App1 retrieves data from the Internet by using JavaScript Object Notation (JSON).
You are developing the following code segment (line numbers are included for reference only):
  
  You need to ensure that the code validates the JSON string. Which code should you insert at line 03?
A. DataContractSerializer serializer = new DataContractSerializer();
B. var serializer = new DataContractSerializer();
C. XmlSerlalizer serializer = new XmlSerlalizer(); D. var serializer = new JavaScriptSerializer();
Correct Answer: D Section: Volume A Explanation
Explanation/Reference:
The JavaScriptSerializer Class Provides serialization and deserialization functionality for AJAX- enabled applications.
The JavaScriptSerializer class is used internally by the asynchronous communication layer to serialize and deserialize the data that is passed between the browser and the Web server. You cannot access that instance of the serializer. However, this class exposes a public API. Therefore, you can use the class when you want to work with JavaScript Object Notation (JSON) in managed code.
# QUESTION 100
You are developing an application that uses several objects. The application includes the following code segment. (Line numbers are included for reference only.)
You need to evaluate whether an object is null. Which code segment should you insert at line 03?
 
  A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: D Section: Volume A Explanation
Explanation/Reference:
Use the == operator to compare values and in this case also use the null literal.
# QUESTION 101
You are developing an application.
The application contains the following code segment (line numbers are included for reference only):
When you run the code, you receive the following error message: "Cannot implicitly convert type 'object'' to 'int'. An explicit conversion exists (are you missing a cast?)."
You need to ensure that the code can be compiled. Which code should you use to replace line 05?
 
 A. var2 = arrayl[0] is int;
B. var2 = ((List<int>)arrayl) [0];
C. var2 = arrayl[0].Equals(typeof(int));
D. var2 = (int) arrayl [0];
Correct Answer: D Section: Volume B Explanation
Explanation/Reference: # QUESTION 102
You need to write a method that retrieves data from a Microsoft Access 2013 database.
The method must meet the following requirements: Be read-only.
Be able to use the data before the entire data set is retrieved.
Minimize the amount of system overhead and the amount of memory usage.
Which type of object should you use in the method?
A. SqlDataAdapter B. DataContext
C. DbDataAdapter
D. OleDbDataReader
Correct Answer: D Section: Volume B Explanation
Explanation/Reference:
OleDbDataReader Class
Provides a way of reading a forward-only stream of data rows from a data source.
Example:
OleDbConnection cn = new OleDbConnection(); OleDbCommand cmd = new OleDbCommand(); DataTable schemaTable;
OleDbDataReader myReader;
//Open a connection to the SQL Server Northwind database.
cn.ConnectionString = "Provider=SQLOLEDB;Data Source=server;User ID=login;
Password=password;Initial Catalog=Northwind";
# QUESTION 103
You have the following code:
    
 You need to retrieve all of the numbers from the items variable that are greater than 80. Which code should you use?
 A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: A Section: Volume B Explanation
Explanation/Reference:
# QUESTION 104
DRAG DROP
You are creating a method that will split a single input file into two smaller output files. The method must perform the following actions:
Create a file named header.dat that contains the first 20 bytes of the input file. Create a file named body.dat that contains the remainder of the input file.
You need to create the method.
How should you complete the relevant code? (To answer, drag the appropriate code segments to the correct locations in the answer area. Each code segment may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.)
Select and Place:
  
 Correct Answer:
 
 Section: Volume B Explanation
Explanation/Reference:
# QUESTION 105
DRAG DROP
You are adding a function to a membership tracking application. The function uses an integer named memberCode as an input parameter and returns the membership type as a string.
The function must meet the following requirements: Return "Non-Member" if the memberCode is 0.
  
 Return "Member" if the memberCode is 1.
Return "Invalid" if the memberCode is any value other than 0 or 1.
You need to implement the function to meet the requirements.
How should you complete the relevant code? (To answer, drag the appropriate statements to the correct locations in the answer area. Each statement may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.)
Select and Place:
  Correct Answer:
 
 Section: Volume B Explanation
Explanation/Reference:
# QUESTION 106
HOTSPOT
You are developing the following classes named:
Class1 Class2 Class3
All of the classes will be part of a single assembly named Assembly.dll. Assembly.dll will be used by multiple applications.
All of the classes will implement the following interface, which is also part ofAssembly.dll:
public interface Interface1
{
void Method1(decimal amount);
    
 void Method2(decimal amount); }
You need to ensure that the Method2 method for the Class3 class can be executed only when instances of the class are accessed through the Interface1 interface. The solution must ensure that calls to the Method1 method can be made either through the interface or through an instance of the class.
Which signature should you use for each method? (To answer, select the appropriate signature for each method in the answer area.)
Hot Area:
Correct Answer:
Section: Volume B
  
 Explanation Explanation/Reference:
# QUESTION 107
You are implementing a method named ProcessReports that performs a long-running task. The ProcessReports() method has the following method signature:
public void ProcessReports(List<decimal> values,CancellationTokenSource cts, CancellationToken ct) If the calling code requests cancellation, the method must perform the following actions:
Cancel the long-running task.
Set the task status to TaskStatus.Canceled.
You need to ensure that the ProcessReports() method performs the required actions.
Which code segment should you use in the method body?
A. if (ct.IsCancellationRequested) return;
B. ct.ThrowIfCancellationRequested() ;
C. cts.Cancel();
D. throw new AggregateException();
Correct Answer: B Section: Volume B Explanation
Explanation/Reference: # QUESTION 108
You are developing an application that will be deployed to multiple computers. You set the assembly name. You need to create a unique identity for the application assembly.
Which two assembly identity attributes should you include in the source code? (Each correct answer presents part of the solution. Choose two.)
A. AssemblyTitleAttribute
B. AssemblyCultureAttribute C. AssemblyVersionAttribute D. AssemblyKeyNameAttribute E. AssemblyFileVersion
Correct Answer: BC Section: Volume B Explanation
Explanation/Reference:
The AssemblyName object contains information about an assembly, which you can use to bind to that assembly. An assembly's identity consists of the following:
Simple name
Version number Cryptographic key pair
     
 Supported culture
 B: AssemblyCultureAttribute
Specifies which culture the assembly supports.
The attribute is used by compilers to distinguish between a main assembly and a satellite assembly. A main assembly contains code and the neutral culture's resources. A satellite assembly contains only resources for a particular culture, as in [assembly:AssemblyCultureAttribute("de")]
C: AssemblyVersionAttribute
Specifies the version of the assembly being attributed.
The assembly version number is part of an assembly's identity and plays a key part in binding to the assembly and in version policy.
# QUESTION 109
You are developing an application.
You need to declare a delegate for a method that accepts an integer as a parameter, and then returns an integer.
Which type of delegate should you use?
A. Action<int>
B. Action<int, int>
C. Func<int, int>
D. Func<int>
Correct Answer: C Section: Volume B Explanation
Explanation/Reference: # QUESTION 110
You are writing the following method (line numbers are included for reference only):
You need to ensure that CreateObject compiles successfully.
What should you do?
A. Insert the following code at line 02: where T : new()
B. Replace line 01 with the following code: public void CreateObject<T>()
C. Replace line 01 with the following code: public Object CreateObject<T>()
D. Insert the following code at line 02: where T : Object
 
 Correct Answer: A Section: Volume B Explanation
Explanation/Reference:
# QUESTION 111
You are developing an application that includes the following code segment. (Line numbers are included for reference only.)
You need to ensure that the DoWork(Widget widget) method runs. With which code segment should you replace line 24?
A. DoWork((Widget)o);
B. DoWork(new Widget(o)); C. DoWork(o is Widget);
D. DoWork((ItemBase)o);
Correct Answer: A Section: Volume B Explanation
Explanation/Reference:
# QUESTION 112
An application uses X509 certificates for data encryption and decryption. The application stores certificates in the Personal certificates collection of the Current User store. On each computer, each certificate subject is
 
 unique.
The application includes a method named LoadCertificate. The LoadCertificate() method includes the following code. (Line numbers are included for reference only.)
The LoadCertificate() method must load only certificates for which the subject exactly matches the searchValue parameter value.
You need to ensure that the LoadCertificate() method loads the correct certificates. Which code segment should you insert at line 06?
A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: D Section: Volume B Explanation
Explanation/Reference:
# QUESTION 113
You are developing a class named Scorecard. The following code implements the Scorecard class. (Line numbers are included for reference only.)
  
  You create the following unit test method to test the Scorecard class implementation:
You need to ensure that the unit test will pass. What should you do?
 
 A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: A Section: Volume B Explanation
Explanation/Reference:
# QUESTION 114
You are developing an application that will parse a large amount of text.
You need to parse the text into separate lines and minimize memory use while processing data. Which object type should you use?

 A. DataContractSerializer B. StringBuilder
C. StringReader
D. JsonSerializer
Correct Answer: C Section: Volume B Explanation
Explanation/Reference:
# QUESTION 115
You are developing code for an application that retrieves information about Microsoft .NET Framework assemblies.
The following code segment is part of the application (line numbers are included for reference only):
You need to insert code at line 04. The code must load the assembly. Once the assembly is loaded, the code must be able to read the assembly metadata, but the code must be denied access from executing code from the assembly.
Which code segment should you insert at line 04?
A. Assembly.ReflectionOnlyLoadFrom(bytes); B. Assembly.ReflectionOniyLoad(bytes);
C. Assembly.Load(bytes);
D. Assembly.LoadFrom(bytes);
Correct Answer: C Section: Volume B Explanation
Explanation/Reference:
# QUESTION 116
You are developing a method named GenerateHash that will create the hash value for a file. The method includes the following code. (Line numbers are included for reference only.)
  
 You need to return the cryptographic hash of the bytes contained in the fileBuffer variable. Which code segment should you insert at line 05?
A. Option A
B. Option B
C. Option C
D. Option D
Correct Answer: D Section: Volume B Explanation
Explanation/Reference:
# QUESTION 117
You are modifying an existing application that manages employee payroll. The application includes a class named PayrollProcessor. The PayrollProcessor class connects to a payroll database and processes batches of paychecks once a week.
You need to ensure that the PayrollProcessor class supports iteration and releases database connections after the batch processing completes.
Which two interfaces should you implement? (Each correct answer presents part of the complete solution. Choose two.)
A. IEquatable B. IEnumerable C. IDisposable D. IComparable
Correct Answer: BC Section: Volume B Explanation
 
 Explanation/Reference:
IEnumerable
IDisposable Interface
Exposes an enumerator, which supports a simple iteration over a non-generic collection.
Defines a method to release allocated resources.
The primary use of this interface is to release unmanaged resources.
# QUESTION 118
You are developing an application that will read data from a text file and display the file contents. You need to read data from the file, display it, and correctly release the file resources.
Which code segment should you use?

 A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: A Section: Volume B Explanation
Explanation/Reference: # QUESTION 119

 DRAG DROP
You are creating a method that saves information to a database.
You have a static class named LogHelper. LogHelper has a method named Log to log the exception.
You need to use the LogHelper Log method to log the exception raised by the database server. The solution must ensure that the exception can be caught by the calling method, while preserving the original stack trace.
How should you write the catch block? (Develop the solution by selecting and ordering the required code snippets. You may not need all of the code snippets.)
Select and Place:
Correct Answer:
 
 Section: Volume B Explanation
Explanation/Reference:
Note:
Catch the database exception, log it, and then rethrow it.
* SQLException
An exception that provides information on a database access error or other errors.
# QUESTION 120
HOTSPOT
You have the following code:
 
 For each of the following statements, select Yes if the statement is true. Otherwise, select No.
Hot Area:

  Correct Answer:
 Section: Volume B Explanation
Explanation/Reference:
# QUESTION 121
HOTSPOT
You are building a data access layer in an application that contains the following code:

  For each of the following statements, select Yes if the statement is true. Otherwise, select No.
Hot Area:
 Correct Answer:
 Section: Volume B

 Explanation Explanation/Reference:
# QUESTION 122
HOTSPOT
You have the following code:
For each of the following statements, select Yes if the statement is true. Otherwise, select No.
Hot Area:
 
  Correct Answer:
Section: Volume B Explanation
Explanation/Reference:
Note:
* CustomerID is declared private.
* CompanyName is declted protected.
* State is declared protected.
The protected keyword is a member access modifier. A protected member is accessible from within the class in which it is declared, and from within any class derived from the class that declared this member.
# QUESTION 123
HOTSPOT
You have the following code (line numbers are included for reference only):
 
 To answer, complete each statement according to the information presented in the code.
Hot Area:
 Correct Answer:
 
  Section: Volume B Explanation
Explanation/Reference: # QUESTION 124
You need to create a method that can be called by using a varying number of parameters. What should you use?
A. Method overloading B. Interface
C. Named parameters D. Lambda expressions
Correct Answer: A Section: Volume B Explanation
Explanation/Reference:
Explanation:
Member overloading means creating two or more members on the same type that differ only in the number or type of parameters but have the same name.
Overloading is one of the most important techniques for improving usability, productivity, and readability of reusable libraries. Overloading on the number of parameters makes it possible to provide simpler versions of constructors and methods. Overloading on the parameter type makes it possible to use the same member name for members performing identical operations on a selected set of different types.
# QUESTION 125
You are developing an application.

 The application contains the following code segment (line numbers are included for reference only):
 When you run the code, you receive the following error message: "Cannot implicitly convert type 'object'' to 'inf. An explicit conversion exists (are you missing a cast?)."
You need to ensure that the code can be compiled. Which code should you use to replace line 05?
A. var2 = ((List<int>) array1) [0];
B. var2 = array1[0].Equals(typeof(int));
C. var2 = Convert.ToInt32(array1[0]); D. var2 = ((int[])array1)[0];
Correct Answer: A Section: Volume B Explanation
Explanation/Reference:
Make a list of integers of the array with = ( (List<int>)arrayl) then select the first item in the list with [0].
# QUESTION 126
You have the following code (line numbers are included for reference only):

  You need to ensure that if an exception occurs, the exception will be logged. Which code should you insert at line 28?

 A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: B Section: Volume B Explanation
Explanation/Reference:
* XmlWriterTraceListener
Directs tracing or debugging output as XML-encoded data to a TextWriter or to a Stream, such as a FileStream.
* TraceListener.TraceEvent Method (TraceEventCache, String, TraceEventType, Int32) Writes trace and event information to the listener specific output.
Syntax: [ComVisibleAttribute(false)] public virtual void TraceEvent( TraceEventCache eventCache, string source,
TraceEventType eventType, int id
)
# QUESTION 127
You write the following method (line numbers are included for reference only):
 
  You need to ensure that the method extracts a list of URLs that match the following pattern: @http://(www\.)?([^\.]+)\.com;
Which code should you insert at line 07?
A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: D Section: Volume B Explanation
Explanation/Reference:
* MatchCollection
Represents the set of successful matches found by iteratively applying a regular expression pattern to the input string.
The collection is immutable (read-only) and has no public constructor. The Regex.Matches method returns a MatchCollection object.
* List<T>.Add Method
Adds an object to the end of the List<T>.
Incorrect:
Not A: ICollection.SyncRoot Property
For collections whose underlying store is not publicly available, the expected implementation is to return the current instance. Note that the pointer to the current instance might not be sufficient for collections that wrap other collections; those should return the underlying collection's SyncRoot property.
 
 # QUESTION 128
You are creating a class library that will be used in a web application. You need to ensure that the class library assembly is strongly named. What should you do?
A. Use the gacutil.exe command-line tool.
B. Use the xsd.exe command-line tool.
C. Use the aspnet_regiis.exe command-line tool.
D. Use assembly attributes.
Correct Answer: D Section: Volume B Explanation
Explanation/Reference:
The Windows Software Development Kit (SDK) provides several ways to sign an assembly with a strong name: * Using the Assembly Linker (Al.exe) provided by the Windows SDK.
* Using assembly attributes to insert the strong name information in your code. You can use either the AssemblyKeyFileAttribute or the AssemblyKeyNameAttribute, depending on where the key file to be used is located.
* Using compiler options such /keyfile or /delaysign in C# and Visual Basic, or the /KEYFILE or /DELAYSIGN linker option in C++. (For information on delay signing, see Delay Signing an Assembly.)
Note:
* A strong name consists of the assembly's identity--its simple text name, version number, and culture information (if provided)--plus a public key and a digital signature. It is generated from an assembly file (the file that contains the assembly manifest, which in turn contains the names and hashes of all the files that make up the assembly), using the corresponding private key. Microsoft® Visual Studio® .NET and other development tools provided in the .NET Framework SDK can assign strong names to an assembly. Assemblies with the same strong name are expected to be identical.
# QUESTION 129
You need to store the values in a collection.
The solution must meet the following requirements:
The values must be stored in the order that they were added to the collection. The values must be accessed in a first-in, first-out order.
Which type of collection should you use?
A. SortedList B. Queue
C. ArrayList D. Hashtable
Correct Answer: B Section: Volume B Explanation
Explanation/Reference:
# QUESTION 130
An application is throwing unhandled NullReferenceException and FormatException errors. The stack trace shows that the exceptions occur in the GetWebResult() method.
  
 The application includes the following code to parse XML data retrieved from a web service. (Line numbers are included for reference only.)
You need to handle the exceptions without interfering with the existing error-handling infrastructure.
Which two actions should you perform? (Each correct answer presents part of the solution. Choose two.)
A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: AC Section: Volume B Explanation
Explanation/Reference:
A: The TryParse method is like the Parse method, except the TryParse method does not throw an exception if the conversion fails. It eliminates the need to use exception handling to test for a FormatException in the event that s is invalid and cannot be successfully parsed.
C: UnhandledException event handler
If the UnhandledException event is handled in the default application domain, it is raised there for any unhandled exception in any thread, no matter what application domain the thread started in. If the thread started in an application domain that has an event handler for UnhandledException, the event is raised in that application domain.
  # QUESTION 131

 You are developing an application that retrieves patient data from a web service. The application stores the JSON messages returned from the web service in a string variable named PatientAsJson. The variable is encoded as UTF-8. The application includes a class named Patient that is defined by the following code:
You need to populate the Patient class with the data returned from the web service. Which code segment should you use?
 A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: A Section: Volume B Explanation
Explanation/Reference:
 
 # QUESTION 132
You are developing a game that allows players to collect from 0 through 1000 coins. You are creating a method that will be used in the game. The method includes the following code. (Line numbers are included for reference only.)
01 public string FormatCoins(string name, int coins) 02 {
03
04 }
The method must meet the following requirements:
Return a string that includes the player name and the number of coins.
Display the number of coins without leading zeros if the number is 1 or greater. Display the number of coins as a single 0 if the number is 0.
You need to ensure that the method meets the requirements. Which code segment should you insert at line 03?
   A. Option A
B. Option B
C. Option C
D. Option D
Correct Answer: D Section: Volume B Explanation
Explanation/Reference:
# QUESTION 133
You have an application that will send confidential information to a Web server. You need to ensure that the data is encrypted when it is sent across the network.
Which class should you use?
A. CryptoStream
B. AuthenticatedStream C. PipeStream
D. NegotiateStream
 
 Correct Answer: A Section: Volume B Explanation
Explanation/Reference:
# QUESTION 134
You are developing a class named EmployeeRoster. The following code implements the EmployeeRoster class. (Line numbers are included for reference only.)
 You create the following unit test method to test the EmployeeRoster class implementation:
You need to ensure that the unit test will pass. What should you do?
 
 A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: B Section: Volume B Explanation
Explanation/Reference:
# QUESTION 135
You are developing an application that produces an executable named MyApp.exe and an assembly named MyApp.dll.
The application will be sold to several customers.
You need to ensure that enough debugging information is available for MyApp.exe, so that if the application throws an error in a customer's environment, you can debug the error in your own development environment.
What should you do?

 A. Digitally sign MyApp.dll.
B. Produce program database (PDB) information when you compile the code.
C. Compile MyApp.exe by using the /unsafe compiler option.
D. Initializes a new instance of the AssemblyDelaySignAttribute class in the MyApp.dll constructor.
Correct Answer: B Section: Volume B Explanation
Explanation/Reference: # QUESTION 136
You are modifying an existing banking application.
The application includes an Account class and a Customer class. The following code segment defines the classes.
You populate a collection named customerCollection with Customer and Account objects by using the following code segment:
You create a largeCustomerAccounts collection to store the Account objects by using the following code segment:
  
 Collection<Account> largeCustomerAccounts = new Collection<Account> ();
All accounts with a Balance value greater than or equal to 1,000,000 must be tracked. You need to populate the largeCustomerAccounts collection with Account objects. Which code segment should you use?
A. Option A

 B. Option B C. Option C D. Option D
Correct Answer: C Section: Volume B Explanation
Explanation/Reference:
# QUESTION 137
You are implementing a method named GetValidEmailAddresses. The GetValidEmailAddresses() method processes a list of string values that represent email addresses.
The GetValidEmailAddresses() method must return only email addresses that are in a valid format. You need to implement the GetValidEmailAddresses() method.
Which two code segments can you use to achieve this goal? (Each correct answer presents a complete solution. Choose two.)

 A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: BD Section: Volume B Explanation
Explanation/Reference:
Note:
 
 * List<T>.Add Method
Adds an object to the end of the List<T>.
# QUESTION 138
HOTSPOT
You define a class by using the following code:
 To answer, complete each statement according to the information presented in the code.
Hot Area:

  Correct Answer:
Section: Volume B Explanation
Explanation/Reference:
# QUESTION 139
DRAG DROP
You are developing a C# console application that outputs information to the screen. The following code segments implement the two classes responsible for making calls to the Console object:
 
  When the application is run, the console output must be the following text:
Log started
Base: Log continuing Finished
You need to ensure that the application outputs the correct text.
Which four lines of code should you use in sequence? (To answer, move the appropriate classes from the list of classes to the answer area and arrange them in the correct order.)
Select and Place:

 Correct Answer:
Section: Volume B Explanation
Explanation/Reference:
Note:
  
 * The abstract keyword enables you to create classes and class members that are incomplete and must be implemented in a derived class.
* An abstract class cannot be instantiated. The purpose of an abstract class is to provide a common definition of a base class that multiple derived classes can share.
# QUESTION 140
You are creating an application that reads from a database.
You need to use different databases during the development phase and the testing phase by using conditional compilation techniques.
What should you do?
A. Configure the assembly metadata to use the pre-existing public key for the assembly identity by using the AssemblySignatureKeyAttribute attribute.
B. Disable the strong-name bypass feature of Microsoft .NET Framework in the registry.
C. Configure the Define DEBUG constant setting in Microsoft Visual Studio.
D. Decorate the code by using the [assembly:AssemblyDelaySignAttribute(true)] attribute.
Correct Answer: C Section: Volume B Explanation
Explanation/Reference:
Use one debug version to connect to the development database, and a standard version to connect to the live database.
# QUESTION 141
You are troubleshooting an application that uses a class named FullName. The class is decorated with the DataContractAttribute attribute. The application includes the following code. (Line numbers are included for reference only.)
You need to ensure that the entire FullName object is serialized to the memory stream object. Which code segment should you insert at line 09?
A. binary.WriteEndDocument();
B. binary.WriteEndDocumentAsync(); C. binary.WriteEndElementAsync(); D. binary.Flush();
Correct Answer: A Section: Volume B
 
 Explanation
Explanation/Reference:
* DataContractSerializer.WriteEndObject Method (XmlDictionaryWriter) Writes the closing XML element using an XmlDictionaryWriter.
* Note on line 07: DataContractSerializer.WriteObject Method
Writes all the object data (starting XML element, content, and closing element) to an XML document or stream.
XmlDictionaryWriter
# QUESTION 142
You need to write a method that retrieves data from a Microsoft Access 2013 database. The method must meet the following requirements:
Be read-only.
Be able to use the data before the entire data set is retrieved.
Minimize the amount of system overhead and the amount of memory usage.
Which type of object should you use in the method?
A. DbDataReader B. DataContext
C. unTyped DataSet D. DbDataAdapter
Correct Answer: C Section: Volume B Explanation
Explanation/Reference:
DbDataReader Class
Reads a forward-only stream of rows from a data source.
# QUESTION 143
HOTSPOT
You define a class by using the following code:
    You write the following code for a method (line numbers are included for reference only):

  To answer, complete each statement according to the information presented in the code.
Hot Area:
 Correct Answer:

  Section: Volume B Explanation
Explanation/Reference: # QUESTION 144
You are creating a console application named App1.
App1 will validate user input for order entries.
You are developing the following code segment (line numbers are included for reference only):
You need to complete the code segment.
The solution must ensure that prices are positive and have two decimal places. Which code should you insert at line 03?
 
  A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: B Section: Volume B Explanation
Explanation/Reference:
* Regex.IsMatch Method (String, String)
Indicates whether the specified regular expression finds a match in the specified input string.
Syntax:
public static bool IsMatch( string input,
string pattern
)
# QUESTION 145
You have the following code (line numbers are included for reference only):

  You need to ensure that if an exception occurs, the exception will be logged. Which code should you insert at line 28?

  A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: C Section: Volume B Explanation
Explanation/Reference:
* XmlWriterTraceListener
Directs tracing or debugging output as XML-encoded data to a TextWriter or to a Stream, such as a FileStream.
* TraceListener.TraceEvent Method (TraceEventCache, String, TraceEventType, Int32) Writes trace and event information to the listener specific output.
Syntax: [ComVisibleAttribute(false)] public virtual void TraceEvent( TraceEventCache eventCache, string source,
TraceEventType eventType, int id
)
# QUESTION 146
You have the following code:

  You need to retrieve all of the numbers from the items variable that are greater than 80. Which code should you use?
A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: A Section: Volume B Explanation
Explanation/Reference:
# QUESTION 147
You are creating a console application named Appl.
App1 retrieves data from the Internet by using JavaScript Object Notation (JSON).
You are developing the following code segment (line numbers are included for reference only):
 
  You need to ensure that the code validates the JSON string. Which code should you insert at line 03?
A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: B Section: Volume B Explanation
Explanation/Reference:
The JavaScriptSerializer Class Provides serialization and deserialization functionality for AJAX- enabled applications.
The JavaScriptSerializer class is used internally by the asynchronous communication layer to serialize and deserialize the data that is passed between the browser and the Web server. You cannot access that instance of the serializer. However, this class exposes a public API. Therefore, you can use the class when you want to work with JavaScript Object Notation (JSON) in managed code.
# QUESTION 148
You are evaluating a method that calculates loan interest- The application includes the following code segment. (Line numbers are included for reference only.)
 
  When the loanTerm value is 3 and the loanAmount value is 9750, the loanRate must be set to 8.25 percent. You need to adjust the loanRate value to meet the requirements.
What should you do?
A. Replace line 04 with the following code segment:
decimal loanRate = 0.0325m;
B. Replace line 17 with the following code segment: interestAmount = loanAmount * 0.0825m * loanTerm;
C. Replace line 15 with the following code segment: loanRate = 0.0825m;
D. Replace line 07 with the following code segment: loanRate = 0.0825m;
Correct Answer: C Section: Volume B Explanation
Explanation/Reference:
# QUESTION 149
You are implementing a new method named ProcessData. The ProcessData() method calls a third-party component that performs a long-running operation.
The third-party component uses the IAsyncResult pattern to signal completion of the long- running operation.
You need to ensure that the calling code handles the long-running operation as a System.Threading.Tasks.Task object.
Which two actions should you perform? (Each correct answer presents part of the solution. Choose two.)
A. Call the component by using the TaskFactory.FromAsync() method.
B. Create a TaskCompletionSource<T> object.

 C. Apply the async modifier to the method signature.
D. Apply the following attribute to the method signature: [MethodImpl(MethodImplOptions.Synchronized)]
Correct Answer: AB Section: Volume B Explanation
Explanation/Reference:
A: TaskFactory.FromAsync Method
Creates a Task that represents a pair of begin and end methods that conform to the Asynchronous Programming Model pattern. Overloaded.
Example:
TaskFactory.FromAsync Method (IAsyncResult, Action<IAsyncResult>) Creates a Task that executes an end method action when a specified IAsyncResult completes.
B: In many scenarios, it is useful to enable a Task<TResult> to represent an external asynchronous operation. TaskCompletionSource<TResult> is provided for this purpose. It enables the creation of a task that can be handed out to consumers, and those consumers can use the members of the task as they would any other. However, unlike most tasks, the state of a task created by a TaskCompletionSource is controlled explicitly by the methods on TaskCompletionSource. This enables the completion of the external asynchronous operation to be propagated to the underlying Task. The separation also ensures that consumers are not able to transition the state without access to the corresponding TaskCompletionSource.
Note:
* System.Threading.Tasks.Task Represents an asynchronous operation.
# QUESTION 150
You are developing an application for a bank. The application includes a method named ProcessLoan that processes loan applications. The ProcessLoan() method uses a method named CalculateInterest. The application includes the following code:
You need to declare a delegate to support the ProcessLoan() method. Which code segment should you use?
   
 A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: C Section: Volume B Explanation
Explanation/Reference:
# QUESTION 151
You are modifying an application that processes loans. The following code defines the Loan class. (Line numbers are included for reference only.)
  
 Loans are restricted to a maximum term of 10 years. The application must send a notification message if a loan request exceeds 10 years.
You need to implement the notification mechanism.
Which two actions should you perform? (Each correct answer presents part of the solution. Choose two.)
A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: BD Section: Volume B Explanation

 Explanation/Reference:
# QUESTION 152
An application contains code that measures reaction times. The code runs the timer on a thread separate from the user interface. The application includes the following code. (Line numbers are included for reference only.)
 You need to ensure that the application cancels the timer when the user presses the Enter key. Which code segment should you insert at line 14?
A. tokenSource.Token.Register( () => tokenSource.Cancel() ); B. tokenSource.Cancel();
C. tokenSource.IsCancellationRequested = true;
D. tokenSource.Dispose();
Correct Answer: B Section: Volume B Explanation
Explanation/Reference:
# QUESTION 153
You are developing an application that generates code. The application includes the following code segment. (Line numbers are included for reference only.)
You need to ensure that code generated by the GenerateCode() method represents a class that can be accessed by all objects in its application domain.
Which two code segments can you insert at line 05 to achieve this goal? (Each correct answer presents a
 
 complete solution. Choose two.)
 A. Option A
B. Option B
C. Option C
D. Option D
Correct Answer: AC Section: Volume B Explanation
Explanation/Reference: # QUESTION 154
You are developing an application that will process personnel records.
The application must encrypt highly sensitive data.
You need to ensure that the application uses the strongest available encryption. Which class should you use?
A. System.Security.Cryptography.DES
B. System.Security.Cryptography.Aes
C. System.Security.Cryptography.TripleDES D. System.Security.Cryptography.RC2
Correct Answer: B Section: Volume B Explanation
Explanation/Reference: # QUESTION 155
You are developing an application that uses a .config file. The relevant portion of the .config file is shown as follows:

  You need to ensure that diagnostic data for the application writes to the event log by using the configuration specified in the .config file.
What should you include in the application code?
 A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: A Section: Volume B Explanation
Explanation/Reference:
Explanation
Explanation: http://msdn.microsoft.com/en-us/library/vstudio/system.diagnostics.eventlogtracelistener
Public static void Main(string[] args) {
Create a trace listener for the event log.
EventLogTraceListener myTraceListener = new EventLogTraceListener("myEventLogSource"); Add the event log trace listener to the collection.
Trace.Listeners.Add(myTraceListener);
// Write output to the event log.
Trace.WriteLine("Test output");
}
# QUESTION 156
You are developing an application that includes a class named Employee and a generic list of employees. The following code segment declares the list of employees:

 List<Employee> employeesList = new List<Employee>();
You populate the employeesList object with several hundred Employee objects.
The application must display the data for five Employee objects at a time.
You need to create a method that will return the correct number of Employee objects. Which code segment should you use?
A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: B Section: Volume B Explanation
Explanation/Reference:
# QUESTION 157
DRAG DROP
You create an assembly named Assembly1.dll.
You need to ensure that Assembly1.dll can be deployed to the global assembly cache (GAC).
Which commands should you run? (To answer, drag the appropriate programs to the correct locations. Each program may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.)
Select and Place:
 
 Correct Answer:
Section: Volume B Explanation
Explanation/Reference:
# QUESTION 158
DRAG DROP
You have an application that accesses a Microsoft SQL Server database.
The database contains a stored procedure named Proc1. Proc1 accesses several rows of data across multiple tables.
You need to ensure that after Proc1 executes, the database is left in a consistent state. While Proc1 executes, no other operation can modify data already read or changed by Proc1. (Develop the solution by selecting and ordering the required code snippets.
You may not need all of the code snippets.)
Select and Place:
  
 Correct Answer:
 
 Section: Volume B Explanation
 
 Explanation/Reference:
Note:
* Box 1: Start with the sqlconnection
* Box 2: Open the SQL transaction (RepeatableRead)
/ IsolationLevel
Specifies the isolation level of a transaction.
/ RepeatableRead
Volatile data can be read but not modified during the transaction. New data can be added during the transaction.
/ ReadCommitted
Volatile data cannot be read during the transaction, but can be modified.
/ ReadUncommitted
Volatile data can be read and modified during the transaction.
Box 3: Try the query
Box 4: commit the transaction
Box 5: Catch the exception (a failed transaction)
Box 6: Rollback the transaction
Box 7: Final cleanup
Box 8: Clean up (close command and connection).
Reference: SqlConnection.BeginTransaction Method
Incorrect:
The transaction is not set up by transactionscope here. Begintransaction is used.
# QUESTION 159
DRAG DROP
You have an application that uses paging. Each page displays 10 items from a list.
You need to display the third page. (Develop the solution by selecting and ordering the required code snippets. You may not need all of the code snippets.)
Select and Place:

 Correct Answer:
 
 Section: Volume B Explanation
Explanation/Reference:
Note:
Skip the first two page (first 20 items) then select the next page (next 10 items),
* Use the Take operator to return a given number of elements in a sequence and then skip over the remainder. Use the Skip operator to skip over a given number of elements in a sequence and then return the remainder.
# QUESTION 160
DRAG DROP
You have a method that will evaluate a parameter of type Int32 named Status.
You need to ensure that the method meets the following requirements: If Status is set to Active, the method must return 1.
If Status is set to Inactive, the method must return 0.
If Status is any other value, the method must return -1.
What should you do? (To answer, drag the appropriate statement to the correct location in the answer area. Each statement may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.)
   Select and Place:
 
 Correct Answer:
 
 Section: Volume B Explanation
Explanation/Reference: # QUESTION 161
You are developing an application that uses multiple asynchronous tasks to optimize performance. You need to retrieve the result of an asynchronous task.
Which code segment should you use?
 
  A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: C Section: Volume B Explanation
Explanation/Reference:

 # QUESTION 162
You are developing an application.
The application contains the following code:
When you compile the code, you receive the following syntax error message: "A previous catch clause already catches all exceptions of this or a super type ('System.Exception')."
You need to ensure that the code can be compiled. What should you do?
A. Catch the ArgumentException exception instead of the ArgumentNullException exception.
B. Throw a new exception in the second catch block.
C. Catch the ArgumentNullException exception first.
D. Re-throw the exception caught by the second catch block.
Correct Answer: A Section: Volume B Explanation
Explanation/Reference: # QUESTION 163
You are developing an application that includes a method named SendMessage.
You need to ensure that the SendMessage() method is called with the required parameters.
 
 Which two code segments can you use to achieve this goal? (Each correct answer presents a complete solution. Choose two.)

 A. Option A
 
 B. Option B C. Option C D. Option D
Correct Answer: CD Section: Volume B Explanation
Explanation/Reference:
D: ExpandoObject
Represents an object whose members can be dynamically added and removed at run time.
/ The ExpandoObject class enables you to add and delete members of its instances at run time and also to set and get values of these members. This class supports dynamic binding, which enables you to use standard syntax like sampleObject.sampleMember instead of more complex syntax like sampleObject.GetAttribute ("sampleMember").
/ You can pass instances of the ExpandoObject class as parameters. Note that these instances are treated as dynamic objects in C# and late-bound objects in Visual Basic. This means that you do not have IntelliSense for object members and you do not receive compiler errors when you call non-existent members. If you call a member that does not exist, an exception occurs.
Note:
* Visual C# 2010 introduces a new type, dynamic. The type is a static type, but an object of type dynamic bypasses static type checking. In most cases, it functions like it has type object. At compile time, an element that is typed as dynamic is assumed to support any operation. Therefore, you do not have to be concerned about whether the object gets its value from a COM API, from a dynamic language such as IronPython, from the HTML Document Object Model (DOM), from reflection, or from somewhere else in the program. However, if the code is not valid, errors are caught at run time.
# QUESTION 164
You have an application that accesses a Web server named Server1.
You need to download an image named Imagel.jpg from Server1 and store the image locally as Filel.jpg. Which code should you use?

 A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: C Section: Volume B Explanation
Explanation/Reference:
# QUESTION 165
You are developing a C# application. The application references and calls a RESTful web service named EmployeeService. The EmployeeService web service includes a method named GetEmployee, which accepts an employee ID as a parameter. The web service returns the following JSON data from the method.
{"Id":1,"Name":"David Jones">
The following code segment invokes the service and stores the result:
You need to convert the returned JSON data to an Employee object for use in the application. Which code segment should you use?
  
 A. Option A
B. Option B
C. Option C
D. Option D
Correct Answer: C Section: Volume B Explanation
Explanation/Reference: # QUESTION 166
You are developing an assembly.
You plan to sign the assembly when the assembly is developed.
You need to reserve space in the assembly for the signature. What should you do?
A. Run the Assembly Linker tool from the Windows Software Development Kit (Windows SDK).
B. Run the Strong Name tool from the Windows Software Development Kit (Windows SDK).
C. Add the AssemblySignatureKeyAttribute attribute the assembly.
D. Add the AssemblyDelaySignAttribute attribute to the assembly.
 
 Correct Answer: D Section: Volume B Explanation
Explanation/Reference: # QUESTION 167
You have the following code (line numbers are included for reference only):
You need to ensure that if an exception occurs, the exception will be logged. Which code should you insert at line 28?

  A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: A Section: Volume B Explanation
Explanation/Reference:
* XmlWriterTraceListener
Directs tracing or debugging output as XML-encoded data to a TextWriter or to a Stream, such as a FileStream.
# QUESTION 168
You are troubleshooting an application that uses a class named FullName. The class is decorated with the DataContractAttribute attribute. The application includes the following code. (Line numbers are included for reference only.)
You need to ensure that the entire FullName object is serialized to the memory stream object.
 
 Which code segment should you insert at line 09?
A. binary.WriteEndElement(); B. binary.NriteEndDocument(); C. ms.Close() ;
D. binary.Flush();
Correct Answer: A Section: Volume B Explanation
Explanation/Reference:
* DataContractSerializer.WriteEndObject Method (XmlDictionaryWriter) Writes the closing XML element using an XmlDictionaryWriter.
* Note on line 07: DataContractSerializer.WriteObject Method
Writes all the object data (starting XML element, content, and closing element) to an XML document or stream.
XmlDictionaryWriter
# QUESTION 169
You write the following method (line numbers are included for reference only):
You need to ensure that the method extracts a list of URLs that match the following pattern: @http://(www\.)?([^\.]+)\.com;
Which code should you insert at line 07?
  
 A. Option A
B. Option B
C. Option C
D. Option D
Correct Answer: A Section: Volume B Explanation
Explanation/Reference:
* MatchCollection
Represents the set of successful matches found by iteratively applying a regular expression pattern to the input string.
The collection is immutable (read-only) and has no public constructor. The Regex.Matches method returns a MatchCollection object.
* List<T>.Add Method
Adds an object to the end of the List<T>.
Incorrect:
Not D: ICollection.SyncRoot Property
For collections whose underlying store is not publicly available, the expected implementation is to return the current instance. Note that the pointer to the current instance might not be sufficient for collections that wrap other collections; those should return the underlying collection's SyncRoot property.
# QUESTION 170
You have the following code:
You need to retrieve all of the numbers from the items variable that are greater than 80. Which code should you use?
A. Option A
  
 B. Option B C. Option C D. Option D
Correct Answer: B Section: Volume B Explanation
Explanation/Reference:
Enumerable.Where<TSource> Method (IEnumerable<TSource>, Func<TSource, Boolean>) Filters a sequence of values based on a predicate.
Example: List<string> fruits =
new List<string> { "apple", "passionfruit", "banana", "mango", "orange", "blueberry", "grape", "strawberry" };
IEnumerable<string> query = fruits.Where(fruit => fruit.Length < 6);
foreach (string fruit in query) {
Console.WriteLine(fruit); }
/*
This code produces the following output:
apple mango grape
*/
# QUESTION 171
You are developing an application that uses several objects. The application includes the following code segment. (Line numbers are included for reference only.)
You need to evaluate whether an object is null. Which code segment should you insert at line 03?
 
  A. Option A
B. Option B
C. Option C
D. Option D
Correct Answer: B Section: Volume B Explanation
Explanation/Reference:
Use the == operator to compare values and in this case also use the null literal.
# QUESTION 172
You are implementing a new method named ProcessData. The ProcessData() method calls a third-party component that performs a long-running operation to retrieve stock information from a web service.
The third-party component uses the IAsyncResult pattern to signal completion of the long- running operation so that the UI can be updated with the new values.
You need to ensure that the calling code handles the long-running operation as a System.Threading.Tasks.Task object to avoid blocking the UI thread.
Which two actions should you perform? (Each correct answer presents part of the solution. Choose two.)
A. Create a TaskCompletionSource<T> object.
B. Call the component by using the TaskFactory.FromAsync() method.
C. Apply the following attribute to the ProcessData() method signature: [Methodlmpl(MethodlmplOptions.Synchronized)]
D. Apply the async modifier to the ProcessData() method signature.

 Correct Answer: AB Section: Volume B Explanation
Explanation/Reference:
A: In many scenarios, it is useful to enable a Task<TResult> to represent an external asynchronous operation. TaskCompletionSource<TResult> is provided for this purpose. It enables the creation of a task that can be handed out to consumers, and those consumers can use the members of the task as they would any other. However, unlike most tasks, the state of a task created by a TaskCompletionSource is controlled explicitly by the methods on TaskCompletionSource. This enables the completion of the external asynchronous operation to be propagated to the underlying Task. The separation also ensures that consumers are not able to transition the state without access to the corresponding TaskCompletionSource.
B: TaskFactory.FromAsync Method
Creates a Task that represents a pair of begin and end methods that conform to the Asynchronous Programming Model pattern. Overloaded.
Example:
TaskFactory.FromAsync Method (IAsyncResult, Action<IAsyncResult>)
Creates a Task that executes an end method action when a specified IAsyncResult completes.
Note:
* System.Threading.Tasks.Task Represents an asynchronous operation.
# QUESTION 173
You are developing a class named Account that will be used by several applications.
The applications that will consume the Account class will make asynchronous calls to the Account class to execute several different methods.
You need to ensure that only one call to the methods is executed at a time. Which keyword should you use?
A. sealed B. protected C. checked D. lock
Correct Answer: D Section: Volume B Explanation
Explanation/Reference:
# QUESTION 174
You are developing an application by using C#. The application will write events to an event log. You plan to deploy the application to a server.
You create an event source named MySource and a custom log named MyLog on the server. You need to write events to the custom log.
Which code segment should you use?
  
 A. Option A
B. Option B
C. Option C
D. Option D
Correct Answer: D Section: Volume B Explanation
Explanation/Reference: # QUESTION 175
You plan to store passwords in a Windows Azure SQL Database database.
You need to ensure that the passwords are stored in the database by using a hash algorithm, Which cryptographic algorithm should you use?
A. ECDSA B. RSA-768 C. AES-256 D. SHA-256
Correct Answer: D Section: Volume B Explanation
 
 Explanation/Reference:
# QUESTION 176
HOTSPOT
You have an existing order processing system that accepts .xml files,
The following code shows an example of a properly formatted order in XML:
You create the following class that will be serialized:
For each of the following properties, select Yes if the property is serialized according to the defined schema. Otherwise, select No.
Hot Area:
Correct Answer:
   
  Section: Volume B Explanation
Explanation/Reference: # QUESTION 177
You are developing an application that includes methods named ConvertAmount and TransferFunds.
You need to ensure that the precision and range of the value in the amount variable is not lost when the TransferFunds() method is called.
Which code segment should you use?

 A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: C Section: Volume B Explanation
Explanation/Reference:
Simply use float for the TransferFunds parameter. Note:

 * The float keyword signifies a simple type that stores 32-bit floating-point values. * The double keyword signifies a simple type that stores 64-bit floating-point values
# QUESTION 178
You need to write a console application that meets the following requirements:
If the application is compiled in Debug mode, the console output must display Entering debug mode.
If the application is compiled in Release mode, the console output must display Entering release mode.
Which code should you use?
A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: B Section: Volume B Explanation
Explanation/Reference:
When the C# compiler encounters an #if directive, followed eventually by an #endif directive, it will compile the code between the directives only if the specified symbol is defined. Unlike C and C++, you cannot assign a numeric value to a symbol; the #if statement in C# is Boolean and only tests whether the symbol has been defined or not. For example,
#define DEBUG // ...
#if DEBUG
   
 Console.WriteLine("Debug version"); #endif
# QUESTION 179
DRAG DROP
You are adding a method to an existing application. The method uses an integer named statusCode as an input parameter and returns the status code as a string.
The method must meet the following requirements:
Return "Error" if the statusCode is 0.
Return "Success" if the statusCode is 1.
Return "Unauthorized" if the statusCode is any value other than 0 or l.
You need to implement the method to meet the requirements.
How should you complete the relevant code? (To answer, drag the appropriate statements to the correct locations in the answer area. Each statement may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.)
Select and Place:
   Correct Answer:
 
 Section: Volume B Explanation
Explanation/Reference:
# QUESTION 180
You have the following class (line numbers are included for reference only):
 
  ServiceProxy is a proxy for a web service. Calls to the Update method can take up to five seconds. The Test class is the only class the uses Class1.
You run the Execute method three times, and you receive the following results:
213 312 231
You need to ensure that each value is appended to the Value property in the order that the Modify methods are invoked.
What should you do?

  A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: B Section: Volume B Explanation
Explanation/Reference:
# QUESTION 181
You are developing a method named GetHash that will return a hash value for a file. The method includes the following code. (Line numbers are included for reference only.)
You need to return the cryptographic hash of the bytes contained in the fileBytes variable. Which code segment should you insert at line 05?
 
 A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: A Section: Volume B Explanation
Explanation/Reference: # QUESTION 182
You are developing an application that includes the following code segment:
You need to implement the Open() method of each interface in a derived class named UseResources and call the Open() method of each interface.
Which two code segments should you use? (Each correct answer presents part of the solution. Choose two.)
  
  A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: AC Section: Volume B Explanation
Explanation/Reference:

 * An interface contains only the signatures of methods, properties, events or indexers. A class or struct that implements the interface must implement the members of the interface that are specified in the interface definition.
* Example:
interface ISampleInterface {
void SampleMethod(); }
class ImplementationClass : ISampleInterface {
// Explicit interface member implementation: void ISampleInterface.SampleMethod()
{
// Method implementation. }
static void Main() {
// Declare an interface instance.
ISampleInterface obj = new ImplementationClass();
// Call the member.
obj.SampleMethod(); }
}
# QUESTION 183
You are implementing a method named ProcessData that performs a long-running task. The ProcessData() method has the following method signature:
public void ProcessData(List<decimal> values, CancellationTokenSource source, CancellationToken token)
If the calling code requests cancellation, the method must perform the following actions: Cancel the long-running task.
Set the task status to TaskStatus.Canceled.
You need to ensure that the ProcessData() method performs the required actions.
Which code segment should you use in the method body?
A. if (token.IsCancellationRequested) return;
B. throw new AggregateException();
C. token.ThrowIfCancellationRequested();
D. source.Cancel();
Correct Answer: C Section: Volume B Explanation
Explanation/Reference:
# QUESTION 184
HOTSPOT
You have the following code (line numbers are included for reference only):
  
  To answer, complete each statement according to the information presented in the code.
Hot Area:
Correct Answer:
 
 Section: Volume B Explanation
Explanation/Reference: # QUESTION 185
You are developing an application in C#.
The application uses exception handling on a method that is used to execute mathematical calculations by using integer numbers.
You write the following catch blocks for the method (line numbers are included for reference only):
You need to add the following code to the method:
At which line should you insert the code?
A. 01 B. 03 C. 05 D. 07
   
 Correct Answer: A Section: Volume B Explanation
Explanation/Reference:
# QUESTION 186
You are developing an application that uses multiple asynchronous tasks to optimize performance. The application will be deployed in a distributed environment.
You need to retrieve the result of an asynchronous task that retrieves data from a web service. The data will later be parsed by a separate task.
Which code segment should you use?

  A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: B Section: Volume B Explanation
Explanation/Reference:
# QUESTION 187
You are implementing a method named GetValidPhoneNumbers. The GetValidPhoneNumbers() method

 processes a list of string values that represent phone numbers.
The GetValidPhoneNumbers() method must return only phone numbers that are in a valid format.
You need to implement the GetValidPhoneNumbers() method.
Which two code segments can you use to achieve this goal? (Each correct answer presents a complete solution. Choose two.)
A. Option A
B. Option B
 
 C. Option C D. Option D
Correct Answer: AB Section: Volume B Explanation
Explanation/Reference:
* Regex.Matches
Searches an input string for all occurrences of a regular expression and returns all the matches.
* MatchCollection
Represents the set of successful matches found by iteratively applying a regular expression pattern to the input string.
The collection is immutable (read-only) and has no public constructor. The Regex.Matches method returns a MatchCollection object.
* List<T>.Add Method
Adds an object to the end of the List<T>.
# QUESTION 188
DRAG DROP
You are developing an application that will write data to a file. The application includes the following code segment. (Line numbers are included for reference only.)
You need to ensure that the WriteData() method will write data to a file.
Which four code segments should you insert in sequence at line 03? (To answer, move the appropriate code segments from the list of code segments to the answer area and arrange them in the correct order.)
Select and Place:
Correct Answer:
 
 Section: Volume B Explanation
Explanation/Reference:
Note:
* StreamWriter Constructor (String)
Initializes a new instance of the StreamWriter class for the specified file by using the default encoding and buffer size.
Incorrect:
The StreamWriter class has no method Open.
# QUESTION 189
You need to create a method that can be called by using a varying number of parameters. What should you use?
A. derived classes
B. interface
C. enumeration
D. method overloading
Correct Answer: D Section: Volume B Explanation
Explanation/Reference:
Member overloading means creating two or more members on the same type that differ only in the number or type of parameters but have the same name.
Overloading is one of the most important techniques for improving usability, productivity, and readability of reusable libraries. Overloading on the number of parameters makes it possible to provide simpler versions of constructors and methods. Overloading on the parameter type makes it possible to use the same member name for members performing identical operations on a selected set of different types.
# QUESTION 190
 
 You are creating an application that reads from a database.
You need to use different databases during the development phase and the testing phase by using conditional compilation techniques.
What should you do?
A. Configure the Define TRACE constant setting in Microsoft Visual Studio.
B. Decorate the code by using the [DebuggerDisplay("Mydebug")] attribute.
C. Configure the Define DEBUG constant setting in Microsoft Visual Studio.
D. Disable the strong-name bypass feature of Microsoft .NET Framework in the registry.
Correct Answer: C Section: Volume B Explanation
Explanation/Reference:
Use one debug version to connect to the development database, and a standard version to connect to the live database.
# QUESTION 191
You are creating a class named Loan.
The Loan class must meet the following requirements:
Include a member that represents the rate for a Loan instance.
Allow external code to assign a value to the rate member.
Restrict the range of values that can be assigned to the rate member.
You need to implement the rate member to meet the requirements. In which form should you implement the rate member?
A. public static property
B. public property
C. public static field
D. protected field
Correct Answer: B Section: Volume B Explanation
Explanation/Reference: # QUESTION 192
You are creating a class library that will be used in a web application. You need to ensure that the class library assembly is strongly named. What should you do?
A. Use the csc.exe /target:Library option when building the application.
B. Use the AL.exe command-line tool.
C. Use the aspnet_regiis.exe command-line tool.
D. Use the EdmGen.exe command-line tool.
   
 Correct Answer: B Section: Volume B Explanation
Explanation/Reference:
The Windows Software Development Kit (SDK) provides several ways to sign an assembly with a strong name: * Using the Assembly Linker (Al.exe) provided by the Windows SDK.
* Using assembly attributes to insert the strong name information in your code. You can use either the AssemblyKeyFileAttribute or the AssemblyKeyNameAttribute, depending on where the key file to be used is located.
* Using compiler options such /keyfile or /delaysign in C# and Visual Basic, or the /KEYFILE or /DELAYSIGN linker option in C++. (For information on delay signing, see Delay Signing an Assembly.)
Note:
* A strong name consists of the assembly's identity--it's simple text name, version number, and culture information (if provided)--plus a public key and a digital signature. It is generated from an assembly file (the file that contains the assembly manifest, which in turn contains the names and hashes of all the files that make up the assembly), using the corresponding private key. Microsoft® Visual Studio® .NET and other development tools provided in the .NET Framework SDK can assign strong names to an assembly. Assemblies with the same strong name are expected to be identical.
# QUESTION 193
You are creating a console application named App1.
App1 retrieves data from the Internet by using JavaScript Object Notation (JSON). You are developing the following code segment (line numbers are included for reference only):
You need to ensure that the code validates the JSON string. Which code should you insert at line 03?
  
 A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: D Section: Volume B Explanation
Explanation/Reference:
The JavaScriptSerializer Class Provides serialization and deserialization functionality for AJAX- enabled applications.
The JavaScriptSerializer class is used internally by the asynchronous communication layer to serialize and deserialize the data that is passed between the browser and the Web server. You cannot access that instance of the serializer. However, this class exposes a public API. Therefore, you can use the class when you want to work with JavaScript Object Notation (JSON) in managed code.
# QUESTION 194
You are developing an application that includes methods named EvaluateLoan, ProcessLoan, and FundLoan. The application defines build configurations named TRIAL, BASIC, and ADVANCED.
You have the following requirements:
The TRIAL build configuration must run only the EvaluateLoan() method.
The BASIC build configuration must run all three methods.
The ADVANCED build configuration must run only the EvaluateLoan() and ProcessLoan() methods.
You need to meet the requirements. Which code segment should you use?
   
  A. Option A
B. Option B
C. Option C D. Option D

 Correct Answer: C Section: Volume B Explanation
Explanation/Reference: # QUESTION 195
You are creating an application that processes a list of numbers.
The application must define a method that queries the list and displays a subset of the numbers to the user. The method must not update the list.
You need to create an extendable query by using LINQ. What should you do?

 A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: C Section: Volume B Explanation
Explanation/Reference: # QUESTION 196
 
 You are developing an application that will be deployed to multiple computers. You set the assembly name. You need to create a unique identity for the application assembly.
Which two assembly identity attributes should you include in the source code? (Each correct answer presents part of the solution. Choose two.)
A. AssemblyDelaySignAttribute B. AssemblyCompanyAttribute C. AssemblyProductAttribute D. AssemblyCultureAttribute
E. AssemblyVersionAttribute
Correct Answer: DE Section: Volume B Explanation
Explanation/Reference:
The AssemblyName object contains information about an assembly, which you can use to bind to that assembly. An assembly's identity consists of the following:
Simple name.
Version number.
Cryptographic key pair. Supported culture.
D: AssemblyCultureAttribute
Specifies which culture the assembly supports.
The attribute is used by compilers to distinguish between a main assembly and a satellite assembly. A main assembly contains code and the neutral culture's resources. A satellite assembly contains only resources for a particular culture, as in [assembly:AssemblyCultureAttribute("de")]
E: AssemblyVersionAttribute
Specifies the version of the assembly being attributed.
The assembly version number is part of an assembly's identity and plays a key part in binding to the assembly and in version policy.
# QUESTION 197
You are developing an application that contains a class named TheaterCustomer and a method named ProcessTheaterCustomer. The ProcessTheaterCustomer() method accepts a TheaterCustomer object as the input parameter.
You have the following requirements:
Store the TheaterCustomer objects in a collection.
Ensure that the ProcessTheaterCustomer() method processes the TheaterCustomer objects in the order in which they are placed into the collection.
You need to meet the requirements.
What should you do?
A. Create a System.Collections.Stack collection. Use the Push() method to add TheaterCustomer objects to the collection, Use the Peek() method to pass the objects to the ProcessTheaterCustomer() method.
B. Create a System.Collections.Queue collection. Use the Enqueue() method to add TheaterCustomer objects to the collection. Use the Dequeue() method to pass the objects to the ProcessTheaterCustomer() method.
C. Create a System.Collections.SortedList collection. Use the Add() method to add TheaterCustomer objects to the collection. Use the Remove() method to pass the objects to the ProcessTheaterCustomer() method.
D. Create a System.Collections.ArrayList collection. Use the Insert() method to add TheaterCustomer objects to the collection. Use the Remove() method to pass the objects to the ProcessTheaterCustomer() method.
  
 Correct Answer: B Section: Volume B Explanation
Explanation/Reference: # QUESTION 198
You are debugging a 64-bit C# application.
Users report System.OutOfMemoryException exceptions. The system is attempting to use arrays larger than 2 GB in size.
You need to ensure that the application can use arrays larger than 2 GB. What should you do?
A. Add the /3GB switch to the boot.ini file for the operating system.
B. Set the IMAGE_FILE_LARGE_ADDRESS_AWARE flag in the image header for the application executable file.
C. Set the value of the gcAllowVeryLargeObjects property to true in the application configuration file.
D. Set the value of the user-mode virtual address space setting for the operating system to MAX.
Correct Answer: C Section: Volume B Explanation
Explanation/Reference:
# QUESTION 199
You develop an application by using C#. The application counts the number of times a specific word appears within a set of text files. The application includes the following code. (Line numbers are included for reference only.)

 You have the following requirements:
Populate the _wordCounts object with a list of words and the number of occurrences of each word. Ensure that updates to the ConcurrentDictionary object can happen in parallel.
You need to complete the relevant code.
Which code segment should you insert at line 23?
   
  A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: A Section: Volume B Explanation
Explanation/Reference:
# QUESTION 200
You are evaluating a method that calculates loan interest. The application includes the following code segment. (Line numbers are included for reference only.)
 
 When the loanTerm value is 5 and the loanAmount value is 4500, the loanRate must be set to 6.5 percent. You need to adjust the loanRate value to meet the requirements.
What should you do?
A. Replace line 15 with the following code segment:
loanRate = 0.065m;
B. Replace line 07 with the following code segment: loanRate = 0.065m;
C. Replace line 17 with the following code segment: interestAmount = loanAmount * 0.065m * loanTerm;
D. Replace line 04 with the following code segment: decimal loanRate = 0.065m;
Correct Answer: A Section: Volume B Explanation
Explanation/Reference:
# QUESTION 201
You are developing an application that includes a class named Customer and a generic list of customers. The following code segment declares the list of customers:
List<Customer> customersList = new List<Customer> () ;
You populate the customersList object with several hundred Customer objects. The application must display the data for five Customer objects at a time.
You need to create a method that will return the correct number of Customer objects. Which code segment should you use?

  A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: A Section: Volume B Explanation
Explanation/Reference: # QUESTION 202
You are developing an application that will use multiple asynchronous tasks to optimize performance.
You create three tasks by using the following code segment. (Line numbers are included for reference only.)

  You need to ensure that the ProcessTasks() method waits until all three tasks complete before continuing. Which code segment should you insert at line 09?
A. Task.WaitFor(3);
B. tasks.Yield();
C. tasks.WaitForCompletion(); D. Task.WaitAll(tasks);
Correct Answer: D Section: Volume B Explanation
Explanation/Reference:
# QUESTION 203
You are developing a C# application. The application includes the following code segment, (Line numbers are included for reference only.)
The application fails at line 17 with the following error message: "An item with the same key has already been added."
You need to resolve the error.
 
 Which code segment should you insert at line 16?
 A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: A Section: Volume B Explanation
Explanation/Reference:
# QUESTION 204
You are developing an application by using C#. The application includes a method named SendMessage. The SendMessage() method requires a string input.
You need to replace "Hello" with "Goodbye" in the parameter that is passed to the SendMessage() method.
Which two code segments can you use to achieve this goal? (Each correct answer presents a complete solution. Choose two.)

  A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: BC Section: Volume B Explanation
Explanation/Reference:
* The first parameter should be Hello.
* String.Replace Method (String, String)
Returns a new string in which all occurrences of a specified string in the current instance are replaced with another specified string.
This method does not modify the value of the current instance. Instead, it returns a new string in which all occurrences of oldValue are replaced by newValue.
# QUESTION 205
You are developing an application that includes the following code segment:
You need to implement both Start() methods in a derived class named UseStart that uses the Start() method of each interface.
Which two code segments should you use? (Each correct answer presents part of the solution. Choose two.)
 
  A. Option A
B. Option B
C. Option C
D. Option D
E. Option E
F. Option F

 Correct Answer: BE Section: Volume B Explanation
Explanation/Reference:
B:
* Implementing Multiple Interfaces
A class can implement multiple interfaces using the following syntax: C#
public class CDAndDVDComboPlayer : ICDPlayer, IDVDPlayer
If a class implements more than one interface where there is ambiguity in the names of members, it is resolved using the full qualifier for the property or method name. In other words, the derived class can resolve the conflict by using the fully qualified name for the method to indicate to which interface it belongs
* In C#, both inheritance and interface implementation are defined by the : operator, equivalent to extends and implements in Java. The base class should always be leftmost in the class declaration.
# QUESTION 206
You need to write a console application that meets the following requirements:
If the application is compiled in Debug mode, the console output must display Entering debug mode.
If the application is compiled in Release mode, the console output must display Entering release mode.
Which code should you use?
A. Option A
B. Option B
   
 C. Option C D. Option D
Correct Answer: D Section: Volume B Explanation
Explanation/Reference:
#elif lets you create a compound conditional directive. The #elif expression will be evaluated if neither the preceding #if (C# Reference) nor any preceding, optional, #elif directive expressions evaluate to true. If a #elif expression evaluates to true, the compiler evaluates all the code between the #elif and the next conditional directive. For example:
#define VC7
//...
#if debug
Console.Writeline("Debug build"); #elif VC7
Console.Writeline("Visual Studio 7"); #endif
Incorrect:
Not B:
* System.Reflection.Assembly.GetExecutingAssembly Method
Gets the assembly that contains the code that is currently executing.
* Assembly.IsDefined Method
Indicates whether or not a specified attribute has been applied to the assembly. * System.Dignostics.Debugger Class
Enables communication with a debugger.
Property: IsAttached
Gets a value that indicates whether a debugger is attached to the process.
# QUESTION 207
You are developing an application by using C#. The application will write events to an event log. You plan to deploy the application to a server.
You create an event source named AppSource and a custom log named AppLog on the server. You need to write events to the custom log.
Which code segment should you use?

 A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: A Section: Volume B Explanation
Explanation/Reference:
Source should be AppSource:
* New-EventLog
Creates a new event log and a new event source on a local or remote computer.
Parameters include:
-Source<String[]>
Specifies the names of the event log sources, such as application programs that write to the event log. This parameter is required.
# QUESTION 208
DRAG DROP
You are developing a C# application. The application includes a class named Rate. The following code segment implements the Rate class:
 
  You define a collection of rates named rateCollection by using the following code segment: Collection<Rate> rateCollection = new Collection<Rate>() ;
The application receives an XML file that contains rate information in the following format:
You need to parse the XML file and populate the rateCollection collection with Rate objects.
How should you complete the relevant code? (To answer, drag the appropriate code segments to the correct locations in the answer area. Each code segment may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.)
Select and Place:
 
 Correct Answer:
  
 Section: Volume B Explanation
Explanation/Reference:
# QUESTION 209
DRAG DROP
You are developing an application that will write string values to a file. The application includes the following code segment. (Line numbers are included for reference only.)
01 protected void ProcessFile(string fileName, string value) 02 {
03
04 }
You need to ensure that the ProcessFile() method will write string values to a file.
Which four code segments should you insert in sequence at line 03? (To answer, move the appropriate code segments from the list of code segments to the answer area and arrange them in the correct order.)
Select and Place:
Correct Answer:
 
 Section: Volume B Explanation
Explanation/Reference:
Note:
* Example:
* StreamWriter.Null Field
Provides a StreamWriter with no backing store that can be written to, but not read from. Incorrect:
Not StreamWrite.Open();
The StreamWriter Class does not have any method named Open.
# QUESTION 210
You are implementing a method named ProcessFile that retrieves data files from web servers and FTP servers. The ProcessFile () method has the following method signature:
Public void ProcessFile(Guid dataFileld, string dataFileUri)
Each time the ProcessFile() method is called, it must retrieve a unique data file and then save the data file to disk.
You need to complete the implementation of the ProcessFile() method. Which code segment should you use?
 
 A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: D Section: Volume B Explanation
Explanation/Reference:
* WebRequest.Create Method (Uri)
Initializes a new WebRequest instance for the specified URI scheme.
 
 * Example:
1. To request data from a host server
Create a WebRequest instance by calling Create with the URI of the resource. C#
WebRequest request = WebRequest.Create("http://www.contoso.com/");
2. Set any property values that you need in the WebRequest. For example, to enable authentication, set the Credentials property to an instance of the NetworkCredential class.
C#
request.Credentials = CredentialCache.DefaultCredentials;
3. To send the request to the server, call GetResponse. The actual type of the returned WebResponse object is determined by the scheme of the requested URI.
C#
WebResponse response = request.GetResponse();
4. To get the stream containing response data sent by the server, use the GetResponseStream method of the WebResponse.
C#
Stream dataStream = response.GetResponseStream ();
# QUESTION 211
You are creating a class library that will be used in a web application. You need to ensure that the class library assembly is strongly named. What should you do?
A. Use assembly attributes.
B. Use the csc.exe /target:Library option when building the application.
C. Use the xsd.exe command-line tool.
D. Use the EdmGen.exe command-line tool.
Correct Answer: A Section: Volume B Explanation
Explanation/Reference:
The Windows Software Development Kit (SDK) provides several ways to sign an assembly with a strong name: * (A) Using assembly attributes to insert the strong name information in your code. You can use either the AssemblyKeyFileAttribute or the AssemblyKeyNameAttribute, depending on where the key file to be used is located.
* Using the Assembly Linker (Al.exe) provided by the Windows SDK.
* Using compiler options such /keyfile or /delaysign in C# and Visual Basic, or the /KEYFILE or /DELAYSIGN linker option in C++. (For information on delay signing, see Delay Signing an Assembly.)
# QUESTION 212
You are developing an application that will manage customer records. The application includes a method named FindCustomer.
Users must be able to locate customer records by using the customer identifier or customer name. You need to implement the FindCustomer() method to meet the requirement.
Which two sets of method signatures can you use to achieve this goal? (Each correct answer presents a complete solution. Choose two.)
  
  A. Option A
B. Option B
C. Option C
D. Option D
Correct Answer: BD Section: Volume B Explanation
Explanation/Reference:
# QUESTION 213
You need to write a method that combines an unknown number of strings. The solution must minimize the amount of memory used by the method when the method executes.
What should you include in the code?
A. The String.Concat method
B. The StringBuilder.Append method
C. The + operator
D. The += operator
Correct Answer: A Section: Volume B Explanation
Explanation/Reference:
A: String.Concat Method
Concatenates one or more instances of String, or the String representations of the values of one or more instances of Object.
# QUESTION 214
You are modifying an existing application.
The application includes a Loan class and a Customer class. The following code segment defines the classes.

  You populate a collection named customer-Collection with Customer and Loan objects by using the following code segment:
You create a largeCustomerLoans collection to store the Loan objects by using the following code segment: Collection<Loan> largeCustomerLoans = new Collection<Loan>();
All loans with an Amount value greater than or equal to 4000 must be tracked.
You need to populate the largeCustomerLoans collection with Loan objects.
Which code segment should you use?
 
 A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: D Section: Volume B Explanation

 Explanation/Reference:
Must add to the largeCustomerLoans collection, not the customerLoanCollection.
We iterate through each customer in customerCollection and check each loan belonging to this customer.
# QUESTION 215
DRAG DROP
You have the following code.
You need to return all of the products and their associated categories.
How should you complete the code? To answer, drag the appropriate code elements to the correct targets in the answer area. Each code element may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
Select and Place:
 
 Correct Answer:
  
 Section: Volume B Explanation
Explanation/Reference:
Example: Join operations create associations between sequences that are not explicitly modeled in the data sources. For example you can perform a join to find all the customers and distributors who have the same location. In LINQ the join clause always works against object collections instead of database tables directly. C#
var innerJoinQuery =
from cust in customers
join dist in distributors on cust.City equals dist.City
select new { CustomerName = cust.Name, DistributorName = dist.Name };
Reference: https://msdn.microsoft.com/en-us/library/bb397927.aspx https://msdn.microsoft.com/en-us/library/bb397927.aspx
# QUESTION 216
DRAG DROP
You are developing a C# application. The application includes a class named Rate. The following code segment implements the Rate class:
You define a collection of rates named rateCollection by using the following code segment: Collection<Rate> rateCollection = new Collection<Rate>() ;
The application receives an XML file that contains rate information in the following format:
You need to parse the XML file and populate the rateCollection collection with Rate objects. You have the following code:
   
  Which code segments should you include in Target 1, Target 2, Target 3 and Target 4 to complete the code? (To answer, drag the appropriate code segments to the correct targets in the answer area. Each code segment may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.)
Select and Place:

 Correct Answer:
  
 Section: Volume B Explanation
Explanation/Reference:
Explanation
* Target 1: The element name is rate not Ratesheet.
The Xmlreader readToFollowing reads until the named element is found.
* Target 2:
The following example gets the value of the first attribute. reader.ReadToFollowing("book"); reader.MoveToFirstAttribute();
string genre = reader.Value; Console.WriteLine("The genre value: " + genre);
* Target 3, Target 4:
The following example displays all attributes on the current node. C#VB
if (reader.HasAttributes) {
Console.WriteLine("Attributes of <" + reader.Name + ">"); while (reader.MoveToNextAttribute()) {
Console.WriteLine(" {0}={1}", reader.Name, reader.Value); }
// Move the reader back to the element node.
reader.MoveToElement(); }
The XmlReader.MoveToElement method moves to the element that contains the current attribute node.
Reference: XmlReader Methods https://msdn.microsoft.com/en-us/library/System.Xml.XmlReader_methods(v=vs.110).aspx
# QUESTION 217
You have the following code. (Line numbers are included for reference only.)
When you execute the code, you get an exception.
You need to ensure that B_Products contain all of the products that start with the letter "B". What should you do?
  
  A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: D Section: Volume B Explanation
Explanation/Reference:
Simply select the product items.
# QUESTION 218
You have the following code:
You need to retrieve all of the numbers from the items variable that are greater than 80. Which code should you use?
 
  A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: B Section: Volume B Explanation
Explanation/Reference:
Example: All number larger than 15 from a list using the var query = from num in numbers... contstruct:
var largeNumbersQuery = numbers2.Where(c => c > 15);
Reference: How to: Write LINQ Queries in C# https://msdn.microsoft.com/en-us/library/bb397678.aspx
# QUESTION 219
DRAG DROP
An application serializes and deserializes XML from streams. The XML streams are in the following format:
The application reads the XML streams by using a DataContractSerializer object that is declared by the following code segment:
You need to ensure that the application preserves the element ordering as provided in the XML stream. You have the following code:
  
  Which attributes should you include in Target 1, Target 2 and Target 3 to complete the code? (To answer, drag the appropriate attributes to the correct targets in the answer area. Each attribute may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.)
Select and Place:
Correct Answer:
 
 Section: Volume B Explanation
Explanation/Reference:
DataContractSerializer DataContract DataMember
Target 1: [DataContract(NameSpace=http://contoso.com/2012/06)] Target 2: [DataMember(Order=10)]
Target 3: [DataMember]
Explanation:
Target 1: The DataContractAttribute.Namespace Property gets or sets the namespace for the data contract for the type. Use this property to specify a particular namespace if your type must return data that complies with a specific data contract.
Target2, target3: We put Order=10 on FirstName to ensure that LastName is ordered first.
Note:
The basic rules for data ordering include:
* If a data contract type is a part of an inheritance hierarchy, data members of its base types are always first in the order.
* Next in order are the current type’s data members that do not have the Order property of the DataMemberAttribute attribute set, in alphabetical order.
* Next are any data members that have the Order property of the DataMemberAttribute attribute set. These are ordered by the value of the Order property first and then alphabetically if there is more than one member of a certain Order value. Order values may be skipped.
Reference: Data Member Order https://msdn.microsoft.com/en-us/library/ms729813(v=vs.110).aspx
Reference: DataContractAttribute.Namespace Property https://msdn.microsoft.com/en-us/library/system.runtime.serialization.datacontractattribute.namespace (v=vs.110).aspx
# QUESTION 220
You have the following code. (Line numbers are included for reference only).
    
  You need to complete the WriteTextAsync method. The solution must ensure that the code is not blocked while the file is being written.
Which code should you insert at line 12?
A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: D Section: Volume B Explanation
Explanation/Reference:
  await sourceStream.WriteAsync(encodedText, 0, encodedText.Length);
The following example has the statement await sourceStream.WriteAsync(encodedText, 0, encodedText.Length);, which is a contraction of the following two statements:
 Task theTask = sourceStream.WriteAsync(encodedText, 0, encodedText.Length);

 await theTask;
Example: The following example writes text to a file. At each await statement, the method immediately exits. When the file I/O is complete, the method resumes at the statement that follows the await statement. Note that the async modifier is in the definition of methods that use the await statement.
public async void ProcessWrite() {
string filePath = @"temp2.txt"; string text = "Hello World\r\n";
await WriteTextAsync(filePath, text); }
private async Task WriteTextAsync(string filePath, string text) {
byte[] encodedText = Encoding.Unicode.GetBytes(text);
using (FileStream sourceStream = new FileStream(filePath, FileMode.Append, FileAccess.Write, FileShare.None, bufferSize: 4096, useAsync: true))
{
await sourceStream.WriteAsync(encodedText, 0, encodedText.Length);
}; }
Reference: Using Async for File Access (C# and Visual Basic) https://msdn.microsoft.com/en-us/library/jj155757.aspx
# QUESTION 221
You need to write a method that retrieves data from a Microsoft Access 2013 database. The method must meet the following requirements:
Be read-only.
Be able to use the data before the entire data set is retrieved.
Minimize the amount of system overhead and the amount of memory usage.
Which type of object should you use in the method?
A. DbDataAdapter
B. unTyped DataSet C. OleDbDataAdapter D. DbDataReader
Correct Answer: D Section: Volume B Explanation
Explanation/Reference:
The DbDataReader class reads a forward-only stream of rows from a data source.
Reference: DbDataReader Class https://msdn.microsoft.com/en-us/library/system.data.common.dbdatareader(v=vs.110).aspx
# QUESTION 222
You are developing an application that contains a class named TheaterCustomer and a method named ProcessTheaterCustomer. The ProcessTheaterCustomer() method accepts a TheaterCustomer object as the input parameter.
    
 You have the following requirements:
Store the TheaterCustomer objects in a collection.
Ensure that the ProcessTheaterCustomer() method processes the TheaterCustomer objects in the reverse order in which they are placed into the collection.
You need to meet the requirements.
What should you do?
A. Create a System.Collections.Queue collection. Use the Enqueue() method to add TheaterCustomer objects to the collection. Use the Dequeue() method to pass the objects to the ProcessTheaterCustomer() method.
B. Create a System.Collections.ArrayList collection. Use the Insert() method to add TheaterCustomer objects to the collection. Use the Remove() method to pass the objects to the ProcessTheaterCustomer() method.
C. Create a System.Collections.Stack collection. Use the Push() method to add TheaterCustomer objects to the collection. Use the Pop() method to pass the objects to the ProcessTheaterCustomer() method.
D. Create a System.Collections.Queue collection. Use the Enqueue() method to add TheaterCustomer objects to the collection. Use the Peek() method to pass the objects to the ProcessTheaterCustomer() method.
Correct Answer: C Section: Volume B Explanation
Explanation/Reference:
A stack is the appropriate collection here. In computer science, a stack or LIFO (last in, first out) is an abstract data type that serves as a collection of elements, with two principal operations:
push, which adds an element to the collection, and pop, which removes the last element that was added.
Reference: https://en.wikipedia.org/wiki/Stack_(abstract_data_type)
# QUESTION 223
DRAG DROP
You are creating a class named Data that includes a dictionary object named _data.
You need to allow the garbage collection process to collect the references of the _data object. You have the following code:
   Which code segments should you include in Target 1 and Target 2 to complete the code? (To answer, drag the appropriate code segments to the correct locations in the answer area. Each code segment may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.)
Select and Place:

 Correct Answer:
Section: Volume B Explanation
Explanation/Reference:
Explanation:
* WeakReference influences the garbage collector. Most objects that are referenced must be kept in memory until they are unreachable. But with WeakReference, objects that are referenced can be collected.
* Example: C# program that uses WeakReference
using System; using System.Text;
class Program {
/// <summary>
/// Points to data that can be garbage collected any time. /// </summary>
static WeakReference _weak;
static void Main()
{
// Assign the WeakReference.
_weak = new WeakReference(new StringBuilder("perls"));
Reference: http://www.dotnetperls.com/weakreference
# QUESTION 224
  
 DRAG DROP
You are developing a class named Temperature.
You need to ensure that collections of Temperature objects are sortable. You have the following code:
Which code segments should you include in Target 1, Target 2 and Target 3 to complete the code? (To answer, drag the appropriate code segments to the correct targets in the answer area. Each code segment may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.)
Select and Place:
 Correct Answer:
 
 Section: Volume B Explanation
Explanation/Reference:
Note:
Target 1:
The role of IComparable is to provide a method of comparing two objects of a particular type. This is necessary if you want to provide any ordering capability for your object.
Incorrect: The role of IComparer is to provide additional comparison mechanisms. For example, you may want to provide ordering of your class on several fields or properties, ascending and descending order on the same field, or both.
Target 2, Target 3:
Example:
// Implement IComparable CompareTo method - provide default sort order.
int IComparable.CompareTo(object obj)
{
car c=(car)obj;
return String.Compare(this.make,c.make);
}
Reference: How to use the IComparable and IComparer interfaces in Visual C# https://support.microsoft.com/en-us/kb/320727
# QUESTION 225
DRAG DROP
You have the following class. (Line numbers are included for reference only.)
  
  You need to complete the doOperation method to meet the following requirements:
If AddNumb is passed as the operationName parameter, the AddNumb function is called. If SubNumb is passed as the operationName parameter, the SubNumb function is called.
Which code should you insert at line 16? Develop the solution by selecting and arranging the required code blocks in the correct order. You may not need all of the code blocks.
Select and Place:
  Correct Answer:
 
 Section: Volume B Explanation
Explanation/Reference:
Note:
* target 2:
GetType() is a method you call on individual objects, to get the execution-time type of the object.
Incorrect: typeof is an operator to obtain a type known at compile-time (or at least a generic type parameter). The operand of typeof is always the name of a type or type parameter - never an expression with a value (e.g. a variable). See the C# language specification for more details.
Reference: What is the difference of getting Type by using GetType() and typeof()? http://stackoverflow.com/questions/11312111/when-and-where-to-use-gettype-or-typeof
# QUESTION 226
HOTSPOT
A developer designs an interface that contains the following code:
   
 For each of the following statements, select Yes if the statement is true. Otherwise, select No.
Hot Area:
Correct Answer:
 
 Section: Volume B Explanation
Explanation/Reference: # QUESTION 227
You have the following code (line numbers are included for reference only):
 You need to ensure that new instances of Connection can be created only by other classes by calling the
 
 Create method. The solution must allow classes to inherit from Connection. What should you do?
A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: B Section: Volume B Explanation
Explanation/Reference:
The following list provides the main features of a static class: * Contains only static members.
* Cannot be instantiated.
* Is sealed.
* Cannot contain Instance Constructors.
Creating a static class is therefore basically the same as creating a class that contains only static members and a private constructor. A private constructor prevents the class from being instantiated.
Incorrect:
Not A: An abstract method is a method that is declared without an implementation.
Not C: Private methods can be called from derived classes.
Reference: Static Classes and Static Class Members (C# Programming Guide) https://msdn.microsoft.com/en-us/library/79b3xss3.aspx
# QUESTION 228
You are developing an application that includes methods named ConvertAmount and TransferFunds.
You need to ensure that the precision and range of the value in the amount variable is not lost when the TransferFunds() method is called.
Which code segment should you use?
 
  A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: A Section: Volume B Explanation
Explanation/Reference:
The double keyword signifies a simple type that stores 64-bit floating-point values. The float keyword signifies a simple type that stores 32-bit floating-point values.
Reference: double (C# Reference)
# QUESTION 229

 DRAG DROP
You write the following code.
You need to get the list of all the types defined in the assembly that is being executed currently.
How should you complete the code? To answer, drag the appropriate code elements to the correct targets in the answer area. Each code element may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
Select and Place:
 Correct Answer:
 
 Section: Volume B Explanation
Explanation/Reference:
Explanation:
The AppDomain.CurrentDomain.GetAssemblies() gives you all assemblies loaded in the current application domain.
The Assembly class provides a GetTypes() method to retrieve all types within that particular assembly. Example: Using Linq:
IEnumerable<Type> types =
from a in AppDomain.CurrentDomain.GetAssemblies() from t in a.GetTypes()
select t;
Reference: http://stackoverflow.com/questions/4692340/find-types-in-all-assemblies
# QUESTION 230
DRAG DROP
You are developing an application that implements a set of custom exception types. You declare the custom exception types by using the following code segments:
The application includes a function named DoWork that throws .NET Framework exceptions and custom exceptions. The application contains only the following logging methods:
  The application must meet the following requirements:
 
 When ContosoValidationException exceptions are caught, log the information by using the static void Log (ContosoValidationException ex) method.
When ContosoDbException or other ContosoException exceptions are caught, log the information by using the static void Log(ContosoException ex) method.
You need to meet the requirements. You have the following code:
Which code segments should you include in Target 1, Target 2 and Target 3 to complete the code? (To answer, drag the appropriate code segments to the correct targets in the answer area. Each code segment may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.)
Select and Place:
   Correct Answer:
 
 Section: Volume B Explanation
Explanation/Reference:
Explanation: Catch the most specific exception first.
# QUESTION 231
You need to write a console application that meets the following requirements:
If the application is compiled in Debug mode, the console output must display Entering debug mode.
If the application is compiled in Release mode, the console output must display Entering release mode.
Which code should you use?
   A. Option A
 
 B. Option B
C. Option C
D. Option D
Correct Answer: D Section: Volume B Explanation
Explanation/Reference:
Programmatically detecting Release/Debug mode (.NET) Boolean isDebugMode = false;
#if DEBUG
isDebugMode = true;
#endif
Reference: http://stackoverflow.com/questions/654450/programmatically-detecting-release- debug-mode-net
# QUESTION 232
You write the following method (line numbers are included for reference only):
You need to ensure that the method extracts a list of URLs that match the following pattern: @http://(www\.)?([^\.]+)\.com;
Which code should you insert at line 07?
A. Option A
B. Option B
C. Option C
D. Option D
  
 Correct Answer: A Section: Volume B Explanation
Explanation/Reference:
The MatchCollection.GetEnumerator method returns an enumerator that iterates through a collection.
Note:
The MatchCollection Class represents the set of successful matches found by iteratively applying a regular expression pattern to the input string.
Incorrect:
Not B: The ICollection.SyncRoot property gets an object that can be used to synchronize access to the ICollection.
Reference: MatchCollection.GetEnumerator Method https://msdn.microsoft.com/en-us/library/system.text.regularexpressions.matchcollection.getenumerator (v=vs.110).aspx
# QUESTION 233
You are creating an application that reads from a database.
You need to use different databases during the development phase and the testing phase by using conditional compilation techniques.
What should you do?
A. Configure the Define TRACE constant setting in Microsoft Visual Studio.
B. Specify the /define compiler option.
C. Run the Assembly Linker tool from the Windows Software Development Kit (Windows SDK). D. Decorate the code by using the [assembly:AssemblyDelaySignAttribute(true)] attribute.
Correct Answer: B Section: Volume B Explanation
Explanation/Reference:
You can specify the compiler settings for your application in several ways: * The property pages
* The command line
* #CONST (for Visual Basic) and #define (for C#)
Note: You can have either the Trace or Debug conditional attribute turned on for a build, or both, or neither. Thus, there are four types of build: Debug, Trace, both, or neither. Some release builds for production deployment might contain neither; most debugging builds contain both.
Incorrect answers:
Not A: TRACE is used to enable tracing. It is not used for conditional compilation.
Reference: How to: Compile Conditionally with Trace and Debug https://msdn.microsoft.com/en-us/library/64yxa344(v=vs.110).aspx
# QUESTION 234
You are creating a console application named Appl.
App1 retrieves data from the Internet by using JavaScript Object Notation (JSON).
You are developing the following code segment (line numbers are included for reference only):

  You need to ensure that the code validates the JSON string. Which code should you insert at line 03?
A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: B Section: Volume B Explanation
Explanation/Reference:
JavaScriptSerializer().Deserialize
Converts the specified JSON string to an object of type T.
Example:
string json = File.ReadAllText(Environment.CurrentDirectory + @"\JSON.txt");
Company company = new System.Web.Script.Serialization.JavaScriptSerializer().Deserialize<Company>(
Reference: C# - serialize object to JSON format using JavaScriptSerializer http://matijabozicevic.com/blog/csharp-net-development/csharp-serialize-object-to-json-format-using- javascriptserialization
# QUESTION 235
You are testing an application. The application includes methods named CalculateInterest and LogLine. The CalculateInterest() method calculates loan interest. The LogLine() method sends diagnostic messages to a console window.
 
 The following code implements the methods. (Line numbers are included for reference only.)
You have the following requirements:
The CalculateInterest() method must run for all build configurations. The LogLine() method must run only for debug builds.
You need to ensure that the methods run correctly.
What are two possible ways to achieve this goal? (Each correct answer presents a complete solution. Choose two.)
A. Insert the following code segment at line 01: #region DEBUG
Insert the following code segment at line 10: #endregion
B. Insert the following code segment at line 01: [Conditional("DEBUG")]
C. Insert the following code segment at line 05: #region DEBUG
Insert the following code segment at line 07: #endregion
D. Insert the following code segment at line 10: [Conditional("DEBUG")]
E. Insert the following code segment at line 01: #if DEBUG
Insert the following code segment at line 10: #endif
F. Insert the following code segment at line 10: [Conditional("RELEASE")]
G. Insert the following code segment at line 05: #if DEBUG
Insert the following code segment at line 07: #endif
Correct Answer: DG Section: Volume B Explanation
Explanation/Reference:
D: Also, it's worth pointing out that you can use [Conditional("DEBUG")] attribute on methods that return void to
   
 have them only executed if a certain symbol is defined. The compiler would remove all calls to those methods if the symbol is not defined:
[Conditional("DEBUG")]
void PrintLog() { Console.WriteLine("Debug info"); }
void Test() {
PrintLog();
}
G: When the C# compiler encounters an #if directive, followed eventually by an #endif directive, it will compile the code between the directives only if the specified symbol is defined. Unlike C and C++, you cannot assign a numeric value to a symbol; the #if statement in C# is Boolean and only tests whether the symbol has been defined or not. For example,
#define DEBUG
#if DEBUG Console.WriteLine("Debug version"); #endif
Reference: http://stackoverflow.com/questions/2104099/c-sharp-if-then-directives-for-debug-vs-release
# QUESTION 236
You have a class named Customer and a variable named customers.
You need to test whether the customers' variable is a generic list of Customer objects. Which line of code should you use?
A. Option A
B. Option B
C. Option C D. Option D
Correct Answer: D Section: Volume B Explanation
Explanation/Reference:
If you want to check if it's an instance of a generic type:
return list.GetType().IsGenericType;
If you want to check if it's a generic List<T>:
  
 return list.GetType().GetGenericTypeDefinition() == typeof(List<>);
Reference: Testing if object is of generic type in C# http://stackoverflow.com/questions/982487/testing-if-object-is-of-generic-type-in-c-sharp
# QUESTION 237
DRAG DROP
You have the following code.
string MessageString = “This is the original message!”;
You need to store the SHA1 hash value of MessageString in a variable named HashValue.
Which code should you use? Develop the solution by selecting and arranging the required code blocks in the correct order. You may not need all of the code blocks.
Select and Place:
Correct Answer:
 
 Section: Volume B Explanation
Explanation/Reference: # QUESTION 238
You have a C# application.
The application requires 500 MB of available memory.
You need to identify whether there is enough available memory when the application starts. Which class should you use?
A. OutOfmemoryException
B. MemoryStream
C. PerformanceCounter
D. DiagnosticsConfigurationHandler
Correct Answer: C Section: Volume B Explanation
Explanation/Reference:
# QUESTION 239
DRAG DROP
 
 You are developing a function that takes a parameter named aParam as a string input.
You need to convert aParam to a Double. If the conversion cannot be completed, the function should return 0.
How should you complete the code? To answer, drag the appropriate code elements to the correct targets in the answer area. Each code element may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
Select and Place:
 Correct Answer:
 
 Section: Volume B Explanation
Explanation/Reference:
# QUESTION 240
HOTSPOT
You are building an application in Microsoft Visual Studio 2013. You have the following code.
 
  For each of the following statements, select Yes if the statement is true. Otherwise, select No.
Hot Area:

 Correct Answer:
 
 Section: Volume B Explanation
Explanation/Reference: # QUESTION 241
HOTSPOT
You have the following code:
 
  
 For each of the following statements, select Yes if the statement is true. Otherwise, select No.
Hot Area:
Correct Answer:
 
 Section: Volume B Explanation
Explanation/Reference:
# QUESTION 242
DRAG DROP
You have a class named Customer and a class named Order.
The customer class has a property named Orders that contains a list of Order objects.
The Order class has a property named OrderDate that contains the date of the Order.
You need to create a LINQ query that returns all of the customers who had at least one order during the year
 
 2005.
You write the following code.
How should you complete the code? To answer, drag the appropriate code elements to the correct targets in the answer area. Each code element may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
Select and Place:
Correct Answer:
  
 Section: Volume B Explanation
Explanation/Reference:
 