# 70-483 Programming in C#

- https://www.microsoft.com/en-us/learning/exam-70-483.aspx
- https://www.microsoft.com/ja-jp/learning/exam-70-483.aspx
- https://id.b-ok.org/book/3649125/b070c
- https://id.b-ok.org/book/2734657/618923
- https://www.microsoft.com/en-us/learning/community.aspx
- http://aka.ms/learningpaths ← 見えない
- 試験時間は 150 分

[[_TOC_]]

# ToDo

- C# のタイピングシステムは 3 つの異なる分類を含む： Value types, reference types, pointer types (pointer型を使うのは稀)
- enum 型があるの知らなかった。。特定の value type を持てる。
- 名前が示すとおり、参照型には実際の値への参照が含まれています。値型は直接値を含みます。
- 型が格納される場所には heap と stack がある。reference type は heap に保存され、value へのアドレスは stack に保存される。lambda や boxing は例外。
- stack にデータが格納する利点は、早い、小さい、ガベージコレクションに注意を払う必要がない、こと。
- Value types をつかうべき基準：オブジェクトが小さい、オブジェクトがたくさんある、論理的に不変 (immutable)、であるとき。他の全ての状況では reference type が使われるべき。
- 継承したクラスに（実装は異なるかもしれないが）シグネチャが同じメソッド／プロパティがあることを保証するには、仮想メンバ／抽象クラス／インタフェースという3通りの方法がある。
  - virtual -> override: 既定の実装を与える
  - abstract -> override: 既定の実装を与えない。抽象メソッドを持つ抽象クラスは、インスタンスを生成することができない。
  - interface: 既定の実装を与えない
- C# の継承の書き方は `class Student : Person`, Not `class Student extends Person`.
- generics は、型だけ違って処理の内容が同じ関数を実装するときに使う。 where句で制約できる。 書き方は `void my_func <MY_TYPE> (MY_TYPE i) where MY_TYPE: struct`
- generics の where 句は struct, class, new(), <base CLASS_NAME>, <interface IF_NAME>, または特定の型。 `,` でつなげることもできる。
- Boxing とは `string i = 42; object b = i;` のようにベースクラスの型へキャストすること。逆は Unboxing で、間違えると InvalidCastException が起きる。
  - IEnumerable LINQ と foreach でつかう
  - IComparable ソートの汎用化
  - IDisposable `using` 句でつかう。Dispose メソッドでリソース破棄を保証
  - IQueryable クエリ可能なデータソースへリクエスト可能にする
  - IUnknown
  - IList, ICollection 変更可能なコレクション
  - IDictionary コレクションのルックアップ
- ado ってなんだ？
- tasks ってなんだ？
- stream ってなんだ？
- event log ってどうつかう？
- performance counter ってどうつかう？メモリ500MBってどうやってわかる？
- データ型 int32, int64, float, double を返還する例外はいつおきる？
- LINQ とは、
- PLINQ は `numbers.AsParallel().Where(x => x % 2 == 0).ToArray();` みたいにつかう
- List: hash, linked, sorted ってなんだ？
- GAC global assembly cache ってなんだ？

## EXAM TIP

 1. async and await をつかうとき await ステートメントのない async メソッドを使うべきではありません。 また event handler をつかうとき以外は async メソッドから void を返すことを避けるべきです。
 2. 例外を再び投げるとき例外の詳細を飲み込んでしまわないようによく確認してください。元の例外に情報を追加したいときは、新しい例外を投げてください。でなければ、 元の例外の詳細を保存するために、識別子を付けずに throw キーワードを使用してください。
 3. It’s important to know the different types that are available in C#. A value type should be used for small, immutable objects that are used a lot. In all other situations, use a reference type.
 4. Remember that the difference between a regular static method and an extension method is the special this keyword for the first argument.
 5. Make sure that you know the difference between an implicit and explicit conversion. An explicit conversion is called casting and always needs some special syntax.
 6. Always favor properties over fields for public members. An automatically implemented property looks like a field to the outside world, but you can always add extra behavior when necessary.
 7. Make sure that you know the difference between an interface and an abstract class. An interface has no implementation code. An abstract class can choose to implement methods or leave it to the derived class.
 8. It’s important to know the difference between implementing IDisposable and a finalizer. Both clean up your object, but a finalizer is called by the garbage collector, and the Dispose method can be called from code.
 9. Because of the immutability of the string type, all string operations return a new string. Make sure that you use this value instead of the original string.
10. It’s important to know that when you are parsing user input, the best choice is the TryParse method. Throwing exceptions for “normal” errors is not a best practice. TryParse just returns false when the value can’t be parsed.
11. Try to remember the differences between symmetric and asymmetric algorithms. A symmetric algorithm uses one key; an asymmetric algorithm uses two: a key pair that consists of both a public and a private key.
12. The probing option can be used only to point to locations that are relative to the application path. If you want to locate assemblies somewhere else, you have to use the codebase element.
13. Remember how important it is to save your PDB files somewhere. If you throw them away, you immediately lose the opportunity to debug that specific build of your application.
14. Never try to manually add strings together to form a path. Always use the Path class when combining multiple strings together to form a legal path.

## Contents

### Lv. 1

1. Manage Program Flow (25-30%), 1. プログラムフローの管理 (>80%)
2. Create and Use Types (25-30%), 4. 型の作成と使用 (60%)
3. Debug Applications and Implement Security (25-30%), 2. アプリケーションのセキュリティとデバッグ (60%)
4. Implement Data Access (25-30%), 3. データアクセスの実装 (>40%)

### Lv. 2

1. Manage Program Flow
   1. Implement multithreading and asynchronous processing
   2. Manage multithreading
   3. Implement program flow
   4. Create and implement events and callbacks
   5. Implement exception handling
2. Create and Use Types
   1. Create types
   2. Consume types
   3. Enforce encapsulation
   4. **Create and implement a class hierarchy**
   5. Find, execute, and create types at runtime by using reflection
   6. Manage the object life cycle
   7. **Manipulate strings**
3. Debug Applications and Implement Security
   1. Validate application input
   2. Perform symmetric and asymmetric encryption
   3. Manage assemblies
   4. Debug an application
   5. Implement diagnostics in an application
4. Implement Data Access
   1. Perform I/O operations
   2. Consume data
   3. **Query and manipulate data and objects by using LINQ**
   4. Serialize and deserialize data
   5. Store data in and retrieve data from collections

---

## Chapter summaries

### Chapter 1 Manage program flow

- Multithreading can help you create programs that are responsive and scalable. You can use the TPL, the Parallel class, and PLINQ for this. The new async/await keywords help you write asynchronous code.
- In a multithreaded environment, it’s important to manage synchronization of shared data. You can do this by using the lock statement.
- C# offers statements for making decisions—if, switch, conditional operator (?) and nullcoalescing operator (??)—iterating (for, foreach, while, do-while), and jump statements (break, continue, goto, return and throw).
- Delegates are objects that point to a method and can be used to invoke the method. Lambda expressions are a shorthand syntax for creating anonymous methods inline.
- Events are a layer on top of delegates that help you with creating a publish-subscribe architecture.
- Exceptions are the preferred way to work with errors in the .NET Framework. You can throw exceptions, catch them, and run code in a finally block.

### Chapter 2 Create and use types

- C# uses types such as class, struct, interface, and enum. Types have can have members such as methods, events, fields, properties, indexed properties, and constructors.
- When working with types, you sometimes need to convert between them. This can be done either implicitly or explicitly. When creating your own types, you can add support for these types of conversions.
- You use accessors such as public, private, protected, internal, and protected internal to enforce encapsulation and accessibility. Properties can be used to encapsulate data.
- An object hierarchy can be created by inheritance, and you can have both interface and class inheritance. By marking members as virtual, a derived class can override the member.
- Reflection is the process of inspecting metadata at runtime. Attributes can be used to add metadata to a type.
- C# is a managed language, which means that a garbage collector makes sure that all managed objects are freed from memory whenever they are no longer in use.
- Strings can be used for text. The string type is immutable. The .NET Framework offers a StringBuilder for manipulating large amounts of text. Strings can be searched, enumerated, and formatted for display.

### Chapter 3 Debug applications and implement security 179

- Validating application input is important to ensure the stability and security of your application. You can use the Parse, TryParse, and Convert functions to parse user input. Regular Expressions can be used for matching patterns.
- Cryptography uses symmetric and asymmetric algorithms together with hashing to secure data.
- Code access permissions can be used to restrict the types of operations a program may execute.
- An assembly is a self-contained unit that contains application code and metadata. An assembly can be signed, versioned, and shared by putting it in the GAC.
- By selecting the correct build configurations, you can output additional information to create program database files that can be used to debug an application.
- By using logging, tracing, and performance counters, you can monitor an application while it’s in production.

### Chapter 4 Implement data access 253

- You can use classes such as Drive, DriveInfo, Directory, DirectoryInfo, File, and FileInfo to work with the file system. All I/O uses Streams, which are an abstraction over a series of bytes.
- Asynchronous code is important for long-running operations to improve responsiveness and scalability.
- When working with a database, you can use ADO.NET to establish a connection, execute commands, and retrieve results.
- The .NET Framework has support for working with XML by using classes such as XmlWriter, XmlReader, and XmlDocument, or by using LINQ to XML.
- LINQ offers a uniform way of querying different data sources.
- Serializing and deserializing is the process of transforming an object to a flat file or a series of bytes, and vice versa.
- The .NET Framework offers a comprehensive set of collections that you can use in different scenarios.

---

## Object summary

### Chapter 1 Manage program flow 1
#### Objective 1.1: Implement multithreading and asynchronous processing

- A thread can be seen as a virtualized CPU.
- Using multiple threads can improve responsiveness and enables you to make use of
multiple processors.
- The Thread class can be used if you want to create your own threads explicitly. Otherwise, you can use the ThreadPool to queue work and let the runtime handle things.
- A Task object encapsulates a job that needs to be executed. Tasks are the recommended way to create multithreaded code.
- The Parallel class can be used to run code in parallel.
- PLINQ is an extension to LINQ to run queries in parallel.
- The new async and await operators can be used to write asynchronous code more
easily.
- Concurrent collections can be used to safely work with data in a multithreaded (concurrent access) environment.

#### Objective 1.2: Manage multithreading
#### Objective 1.3: Implement program flow
#### Objective 1.4: Create and implement events and callbacks
#### Objective 1.5: Implement exception handling
### Chapter 2 Create and use types 89
#### Objective 2.1: Create types
#### Objective 2.2: Consume types
#### Objective 2.3: Enforce encapsulation

- Encapsulation is important in object-oriented software. It hides internal details and improves the usability of a type.
- Data can be encapsulated with a property.
- Properties can have both a get and a set accessor that can run additional code, commonly known as getters and setters.
- Types and type elements can have access modifiers to restrict accessibility.
- The access modifiers are public, internal, protected, protected, internal, and private.
- Explicit interface implementation can be used to hide information or to implement interfaces with duplicate member signatures.

#### Objective 2.4: Create and implement a class hierarchy

- Inheritance is the process in which a class is derived from another class or from an
interface.
- An interface specifies the public elements that a type must implement.
- A class can implement multiple interfaces.
- A base class can mark methods as virtual; a derived class can then override those methods to add or replace behavior.
- A class can be marked as abstract so it can’t be instantiated and can function only as a base class.
- A class can be marked as sealed so it can’t be inherited.
- The .NET Framework offers default interfaces such as IComparable, IEnumerable, IDisposable and IUnknown.

#### Objective 2.5: Find, execute, and create types at runtime by

- A C# assembly stores both code and metadata.
- Attributes are a type of metadata that can be applied in code and queried at runtime.
- Reflection is the process of inspecting the metadata of a C# application.
- Through reflection you can create types, call methods, read properties, and so forth.
- The CodeDOM can be used to create a compilation unit at runtime. It can be compiled or converted to a source file.
- Expression trees describe a piece of code. They can be translated to something else (for example, SQL) or they can be compiled and executed.

#### Objective 2.6: Manage the object life cycle
#### Objective 2.7: Manipulate strings

- A string is an immutable reference type.
- When doing a lot of string manipulations, you should use a StringBuilder.
- The String class offers a lot of methods for dealing with strings like IndexOf, LastIndexOf, StartsWith, EndsWith, and Substring.
- Strings can be enumerated as a collection of characters.
- Formatting is the process of displaying an object as a string.
- You can use format strings to change how an object is converted to a string.
- You can implement formatting for your own types.

### Chapter 3 Debug applications and implement security 179
#### Objective 3.1: Validate application input

- Validating application input is important to protect your application against both mistakes and attacks.
- Data integrity should be managed both by your application and your data store.
- The Parse, TryParse, and Convert functions can be used to convert between types.
- Regular expressions, or regex, can be used to match input against a specified pattern or replace specified characters with other values.
- When receiving JSON and XML files, it’s important to validate them using the built-in types, such as with JavaScriptSerializer and XML Schemas.

#### Objective 3.2 Perform symmetric and asymmetric encryption

- A symmetric algorithm uses the same key to encrypt and decrypt data.
- An asymmetric algorithm uses a public and private key that are mathematically linked.
- Hashing is the process of converting a large amount of data to a smaller hash code.
- Digital certificates can be used to verify the authenticity of an author.
- CAS are used to restrict the resources and operations an application can access and execute.
- System.Security.SecureString can be used to keep sensitive string data in memory.

#### Objective 3.3 Manage assemblies
#### Objective 3.4 Debug an application
#### Objective 3.5 Implement diagnostics in an application
### Chapter 4 Implement data access 253
#### Objective 4.1: Perform I/O operations
#### Objective 4.2: Consume data

- ADO.NET uses a provider model that enables you to connect to different types of databases.
- You use a DbConnection object to create a connection to a database.
- You can execute queries that create, update, read, and delete (CRUD) data from a database.
- When creating queries it’s important to use parameterized queries so you avoid SQL injection.
- You can consume a web service from your application by creating a proxy for it.
- You can work with XML by using the XmlReader, XmlWriter, XPathNavigator, and XmlDocument classes.

#### Objective 4.3: Query and manipulate data and objects by using LINQ. 291

- LINQ (Language Integrated Query) とは複数のデータソースに対してクエリを統一的に書ける方法。
- LINQ クエリを処理するときの重要な言語機能は、暗黙の型指定、オブジェクトの初期化構文、ラムダ、拡張メソッド、そして匿名型です。
- You can use LINQ with a method-based syntax and the query syntax.
- メソッドベースの構文とクエリ構文がつかえる。
- LINQ queries are deferred-execution, which means that the query executes when it is first iterated.
- You can use LINQ to XML to query, create, and update XML.

#### Objective 4.4: Serialize and deserialize data

- Serialization is the process of transforming an object to a flat file or a series of bytes.
- Deserialization takes a series of bytes or a flat file and transforms it into an object.
- XML serialization can be done by using the XmlSerializer.
- You can use special attributes to configure the XmlSerializer.
- Binary serialization can be done by using the BinaryFormatter class.
- WCF uses another type of serialization that is performed by the DataContractSerializer.
- JSON is a compact text format that can be created by using the DataContractJsonSerializer.

#### Objective 4.5: Store data in and retrieve data from collections

- The .NET Framework offers both generic and nongeneric collections. When possible, you should use the generic version.
- Array is the most basic type to store a number of items. It has a fixed size.
- List is a collection that can grow when needed. It’s the most-used collection.
- Dictionary stores and accesses items using key/value pairs.
- HashSet stores unique items and offers set operations that can be used on them.
- A Queue is a first-in, first-out (FIFO) collection.
- A Stack is a first-in, last-out (FILO) collection.
- You can create a custom collection by inheriting from a collection class or inheriting from one of the collection interfaces.

---

## Object reviews

Answer the following questions to test your knowledge of the information in this objective.
You can find the answers to these questions and explanations of why each answer choice is correct or incorrect in the “Answers” section at the end of this chapter.

### Chapter 1 Manage program flow 1
#### Objective 1.1: Implement multithreading and asynchronous processing

1. You have a lot of items that need to be processed. For each item, you need to perform a complex calculation. Which technique should you use?
A. You create a Task for each item and then wait until all tasks are finished.
B. You use Parallel.For to process all items concurrently.
C. You use async/await to process all items concurrently.
D. You add all items to a BlockingCollection and process them on a thread created by the Thread class.
2. You are creating a complex query that doesn’t require any particular order and you want to run it in parallel. Which method should you use?
A. AsParallel
B. AsSequential
C. AsOrdered
D. WithDegreeOfParallelism
3. You are working on an ASP.NET application that retrieves some data from another web server and then writes the response to the database. Should you use async/await?
A. No, both operations depend on external factors. You need to wait before they are finished.
B. No, in a server application you don’t have to use async/await. It’s only for responsiveness on the client.
C. Yes, this will free your thread to serve other requests while waiting for the I/O to complete.
D. Yes, this put your thread to sleep while waiting for I/O so that it doesn’t use any CPU.

#### Objective 1.2: Manage multithreading
#### Objective 1.3: Implement program flow
#### Objective 1.4: Create and implement events and callbacks
#### Objective 1.5: Implement exception handling
### Chapter 2 Create and use types 89
#### Objective 2.1: Create types
#### Objective 2.2: Consume types
#### Objective 2.3: Enforce encapsulation

1. What access modifier should you use to make sure that a method in a class can only be accessed inside the same assembly by derived types?
A. Make the class public and its members public.
B. Make the class public and its members protected.
C. Make the class internal and its members internal.
D. Make the class internal and its members protected.
2. You need to expose some data from a class. The data can be read by other types but can be changed only by derived types. What should you use?
A. A protected field
B. A public property with a protected set modifier
C. A protected property
D. A protected property with a public get modifier
3. You have a class that implements two interfaces that both have a method with the same name. Interface IA should be the default implementation. Interface IB should be used only in special situations. How do you implement those interfaces?
A. Implement IA implicitly and IB explicitly.
B. Implement both IA and IB explicitly.
C. Implement both IA and IB implicitly.
D. Implement IA explicitly and IB implicitly.

#### Objective 2.4: Create and implement a class hierarchy

1. You want to create a hierarchy of types because you have some implementation code you want to share between all types. You also have some method signatures you want to share. What should you use?
A. An interface
B. A class with virtual methods
C. An abstract class
D. A sealed class
2. You want to create a type that can be easily sorted. Which interface should you implement?
A. IEnumerable
B. IComparable
C. IDisposable
D. IUnknown
3. You want to inherit from an existing class and add some behavior to a method. Which steps do you have to take? (Choose all that apply.)
A. Use the abstract keyword on the base type.
B. Use the virtual keyword on the base method.
C. Use the new keyword on the derived method.
D. Use the override keyword on the derived method.

#### Objective 2.5: Find, execute, and create types at runtime by

1. You want to read the value of a private field on a class. Which BindingFlags do you need? (Choose all that apply.)
A. Instance
B. DeclaredOnly
C. Static
D. NonPublic
2. You need to create an attribute that can be applied multiple times on a method or a parameter. Which syntax should you use?
A. [AttributeUsage(AttributeTargets.GenericParameter | AttributeTargets.
Method,AllowMultiple = true)]
B. [AttributeUsage(AttributeTargets.Method | AttributeTargets.Parameter,
AllowMultiple = true)]
C. [AttributeUsage(AttributeTargets.All)]
D. [AttributeUsage(AttributeTargets.Method | AttributeTargets.Parameter)]
3. You want to create a delegate that can filter a list of strings on a specific value. Which
type should you use?
A. Action<bool, IEnumerable<string>>.
B. Func<IEnumerable<string>, IEnumerable<string>>.
C. Func<string, IEnumerable<string>, IEnumerable<string>>.
D. Func<IEnumerable<string>>.

#### Objective 2.6: Manage the object life cycle
#### Objective 2.7: Manipulate strings

1. You want to display only the date portion of a DateTime according to the French culture. What method should you use?
A. dt.ToString(new CultureInfo(“fr-FR”))
B. dt.ToString(“M”, new CultureInfo(“fr-FR”));
C. dt.ToString(“d”);
D. dt.ToString(“d”, new CultureInfo(“fr-FR”));
2. You want your type to be able to be converted from string. Which interface should you implement?
A. IFormattable
B. IFormatProvider
C. IComparable
D. IConvertible
3. You are parsing a large piece of text to replace values based on some complex algorithm. Which class should you use?
A. StringReader
B. StringBuilder
C. StringWriter
D. String

### Chapter 3 Debug applications and implement security 179
#### Objective 3.1: Validate application input

1. A user needs to enter a DateTime in a text field. You need to parse the value in code. Which method do you use?
A. DateTime.Parse
B. DateTime.TryParse
C. Convert.ToDateTime
D. Regex.Match.
2. You are working on a globalized web application. You need to parse a text field where the user enters an amount of money. Which method do you use?
A. int.TryParse(value, NumberStyles.Currency, UICulture);
B. decimal.TryParse(value, NumberStyles.Currency, UICulture);
C. decimal.TryParse(value, ServerCulture);
D. decimal.TryParse(value)
3. You need to validate an XML file. What do you use?
A. JavaScriptSerializer
B. RegEx
C. StringBuilder
D. XSD

#### Objective 3.2 Perform symmetric and asymmetric encryption

1. Bob and Alice are using an asymmetric algorithm to exchange data. Which key should they send to the other party to make this possible?
A. Bob sends Alice his private key, and Alice sends Bob her public key.
B. Bob sends Alice his private key, and Alice sends Bob her private key.
C. Bob sends Alice his public key, and Alice sends Bob her public key.
D. Bob sends Alice his public key, and Alice sends Bob her private key.
2. You need to encrypt a large amount of data. Which algorithm do you use?
A. SHA256
B. RSACryptoServiceProvider
C. MD5CryptoServiceProvider
D. AesManaged
3. You need to send sensitive data to another party and you want to make sure that no one tampers with the data. Which method do you use?
A. X509Certificate2.SignHash
B. RSACryptoServiceProvider.Encrypt
C. UnicodeEncoding.GetBytes
D. Marshal.ZeroFreeBSTR

#### Objective 3.3 Manage assemblies
#### Objective 3.4 Debug an application
#### Objective 3.5 Implement diagnostics in an application
### Chapter 4 Implement data access 253
#### Objective 4.1: Perform I/O operations
#### Objective 4.2: Consume data

1. You want to update a specific row in the database. Which objects should you use? (Choose all that apply.)
A. SqlCommand
B. SqlDataReader
C. SqlConnection
D. TransactionScope
2. You are planning to build an application that will use an object-oriented design. It will be used by multiple users at the same time. Which technology should you use?
A. XML files
B. Entity Framework
C. ADO.NET
D. Web service
3. You need to process a large number of XML files in a scheduled service to extract some data. Which class should you use?
A. XmlReader
B. XmlDocument
C. XmlWriter
D. FileStream

#### Objective 4.3: Query and manipulate data and objects by using LINQ. 291

1. You have a list of dates. You want to filter the dates to the current year and then select the highest date. Which query do you use?

A. DateTime result = dates.Where(d => d == DateTime.Now).OrderBy(d => d).First();
B. DateTime result = dates.Where(d => d.Year == DateTime.Now.Year). OrderByDescending(d => d).FirstOrDefault();
C. DateTime result = dates.Where(d => d.Year == DateTime.Now.Year). OrderByDescending(d => d).First();
D. DateTime result = dates.Where(d => d.Year == DateTime.Now.Year). OrderByDescending(d => d).Single();

2. You are trying to use a LINQ query, but you are getting a compile error that the Where method cannot be found. What should you do? (Choose all that apply.)

A. Add a using System.Linq statement.
B. Check that you are using a type that implements IEnumerable.
C. Change your query from query to method syntax.
D. Change the type of your query to var.

3. You are using the following LINQ to Entities query:

```
var query = from p in myContext.Products
            where p.Price < 50
            select p;
int numberOfItems = query.Count();
var products = query.ToList();
```

You are suffering performance problems. How can you improve your query? (Choose all that apply.)

A. Avoid hitting the database multiple times.
B. Don’t execute ToList() on the query.
C. Use paging.
D. Change the query to method syntax.

#### Objective 4.4: Serialize and deserialize data

1. You need to store a large amount of data, and you want to do this in the most optimal way. Which serializer should you use?

A. XmlSerializer
B. BinaryFormatter
C. DataContractSerializer
D. DataContractJsonSerializer

2. You are serializing some sensitive data to a binary format. What should you use? (Choose all that apply.)

A. XmlSerializer
B. ISerializable
C. DataContractSerializer
D. BinaryFormatter

3. You want to serialize some data to XML, and you need to make sure that a certain property is not serialized. Which attribute should you use?

A. XmlElement
B. XmlAttribute
C. XmlIgnore
D. NonSerialized

#### Objective 4.5: Store data in and retrieve data from collections

1. You want to store a group of orders and make sure that a user can easily select an order by its order number. Which collection do you use?

A. List<Order>
B. Dictionary<int,Order>
C. HashSet<Order>
D. Queue<Order>

2. You are using a queue and you want to add a new item. Which method do you use?

A. Push
B. Add
C. Dequeue
D. Enqueue

3. You are working with a large group of family name objects. You need to remove all duplicates and then group them by last name. Which collections should you use? (Choose all that apply.)

A. List<T>
B. Stack<T>
C. Dictionary<string,T>
D. T[]



---

## Focus on 最も成績の低かったスキル領域 (2019/04/13 Failed 642/700)

- **2.4. Create and implement a class hierarchy**
  Design and implement an interface; inherit from a base class; create and implement classes based on the IComparable, IEnumerable, IDisposable, and IUnknown interfaces
- **2.7. Manipulate strings**
  Manipulate strings by using the StringBuilder, StringWriter, and StringReader classes; search strings; enumerate string methods; format strings; use string interpolation
- **4.3. Query and manipulate data and objects by using LINQ**
  Query data by using operators, including projection, join, group, take, skip, aggregate; create methodbased LINQ queries; query data by using query comprehension syntax; select data by using anonymous types; force execution of a query; read, filter, create, and modify data structures by using LINQ to XML

For文とlistを処理（最初の３問
開発時に完全署名されないようにするには？
COMオブジェクトを使いたい時に継承するインターフェースは何か？
使用できるメモリが500MBのとき、なにを参照したらよいか？（performance counter, memory stream）
最も早いのは？（concat, stringbuilder, operator ）
例外が投げられないようにするには？（float,int）
データ型のswitch文の結果の正誤は？
Date time. Minvalue で返されるのは？
イベントログを使うには？
特定の例外を拾うには？
親クラスの型で子クラスをインスタンス化するシナリオって？？
DBから取得した結果セットを全部読むときのwhile条件は？
異なるインターフェースで同じ名前のメソッドを呼ぶには？
Linq for each as parallel
正しいアクセス修飾子は？person クラス、employee クラス
オーダーデータを処理するのに適切なデータ型は？（stack, queue）
アセンブリを開発するときのVSの設定は？
一部のアセンブリの権限がないときのデバッグ方法は？
IOT 1秒間に処理された回数を数えるには？（パフォーマンスカウンター
同じIDのリストを追加しようとしたときのエラーを防ぐ方法は？
元の例外をロギングするには？throws 
Async/await の正しい穴埋めは？
.IsClass = true, .private = true みたいな書き方できるの？
1台のwinserverに置くプログラムに含めるべき一意の属性は？version, name
Webresponse をreadする関数は？
バイナリシリアライズできるかどうか？
Lastname は firstname の後にシリアライズされるか？
String S in string.split(“;”); ?
正しいメールアドレスを返す関数は？
String.substring をつかって表示される結果は？
Dowork(double o) を呼ぶためのシグネチャは？
