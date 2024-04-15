using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace sy3._2 {
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public class MyClass {
        public static volatile bool IsStop;
        TextBlock textBlock1;
        public MyClass(TextBlock textBlock1) {
            this.textBlock1 = textBlock1;
        }
        public void MyMethod(Object obj) {
            MyData state = obj as MyData;
            while (IsStop == false) {
                AddMessage(state.Message);
                Thread.Sleep(100);   //当前线程休眠100ms
            }
            AddMessage(state.Info);
        }
        private void AddMessage(string s) {
            textBlock1.Dispatcher.Invoke(() =>
            {
                textBlock1.Text += s;
            });
        }
    }

    public class MyData {
        public string Info { get; set; }
        public string Message { get; set; }
    }
    public partial class MainWindow : Window {
        public MainWindow() {
            InitializeComponent();
        }
        private void btnStart_Click(object sender, RoutedEventArgs e) {
            MyClass.IsStop = false;
            textBlock1.Text = "";
            MyClass c = new MyClass(textBlock1);
            MyData state = new MyData { Message = "a", Info = "\n线程1已终止" };//或者采用下面两行注释来实例化Mydata
                                                                           //MyData state = new MyData();
                                                                           //state.Message = "a"; state.Info = "\n线程1已终止";
            Thread thread1 = new Thread(c.MyMethod); //线程是通过委托执行相应的方法
            thread1.IsBackground = true;
            thread1.Start(state); //带参数的线程

            state = new MyData { Message = "b", Info = "\n线程2已终止" };
            Thread thread2 = new Thread(c.MyMethod);
            thread2.IsBackground = true;
            thread2.Start(state);
            state = new MyData { Message = "c", Info = "\n线程3已终止" };
            ThreadPool.QueueUserWorkItem(new WaitCallback(c.MyMethod), state); //向线程池中添加工作项, 开启一个线程
            state = new MyData { Message = "d", Info = "\n线程4已终止" };
            ThreadPool.QueueUserWorkItem(new WaitCallback(c.MyMethod), state);
        }
        private void btnStop_Click(object sender, RoutedEventArgs e) {
            MyClass.IsStop = true;//改变MyClass的状态参数，三个正在执行的线程会改变输出         
        }
    }
}
