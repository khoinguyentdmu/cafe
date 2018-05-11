using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using QuanLyCafe.DAO;
using QuanLyCafe.DTO;

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
            loadDrinksListToComboBox();
        }

        private void loadDrinksListToComboBox()
        {
            cboNameOfDrink.DisplayMember = "TENTHUCUONG";
            cboNameOfDrink.ValueMember = "ID";
            cboNameOfDrink.DataSource = DrinkDAO.Instance.getDinksList();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            lblTime.Text = DateTime.Now.ToString();
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            int idOfDrink = Int32.Parse(cboNameOfDrink.SelectedValue.ToString());
            string nameOfDrink = DrinkDAO.Instance.getDink(idOfDrink).getNameOfDrink();
            int numberOfDrink = (int) numUpDownNumOfDrink.Value;
            dgvDrinkOrder.Rows.Add(new object[] {idOfDrink, nameOfDrink, numberOfDrink});
        }
    }
}
