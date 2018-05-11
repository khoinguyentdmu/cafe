using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace QuanLyCafe.DTO
{
    class Drink
    {
        private int id;
        private string nameOfDrink;
        private int unitPrice;

        public int GetId()
        {
            return this.id;
        }

        public string getNameOfDrink()
        {
            return this.nameOfDrink;
        }

        public int getUnitPrice()
        {
            return this.unitPrice;
        }

        public Drink(DataRow row)
        {
            this.id = Int32.Parse(row["ID"].ToString());
            this.nameOfDrink = row["TENTHUCUONG"].ToString();
            this.unitPrice = Int32.Parse(row["DONGIA"].ToString());
        }
    }
}
