using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace sirketCRUD
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();  
        }
        Context db = new Context();
    }
}
