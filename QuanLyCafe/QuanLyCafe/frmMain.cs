using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace QuanLyCafe
{
    public partial class frmMain : Form
    {
        public frmMain()
        {
            InitializeComponent();
        }

        private void ThongTinToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void DangXuatToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Dispose();
        }

        private void frmMain_Load(object sender, EventArgs e)
        {
            
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            lblTime.Text = DateTime.Now.ToString();
        }
    }
}
