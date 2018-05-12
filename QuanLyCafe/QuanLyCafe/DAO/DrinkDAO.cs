using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using QuanLyCafe.DTO;
using System.Data;

namespace QuanLyCafe.DAO
{
    class DrinkDAO
    {
        private static DrinkDAO instance;

        public static DrinkDAO Instance
        {
            get { if (instance == null) instance = new DrinkDAO(); return instance; }
            private set { instance = value; }
        }

        private DrinkDAO() { }

        public DataTable getDinksList()
        {
            List<Drink> list = new List<Drink>();
            string query = "USP_GetDinksList";
            DataTable data = DataProvider.Instance.ExecuteQuery(query);
            return data;
        }

        public Drink getDink(int id)
        {
            List<Drink> list = new List<Drink>();
            string query = "USP_GetDrink @id";
            DataTable data = DataProvider.Instance.ExecuteQuery(query, new object[] {id});
            Drink drink= new Drink(data.Rows[0]);
            return drink;
        }

        public bool insertDrink(string nameOfDrink, string unitPrice)
        {
            string query = "USP_InsertDrink @name , @unitPrice";
            int res = DataProvider.Instance.ExecuteNonQuery(query, new object[] { nameOfDrink, unitPrice });
            return res > 0;
        }

        public bool deleteDrink(string ID)
        {
            string query = "USP_DeleteDrink @ID";
            int res = DataProvider.Instance.ExecuteNonQuery(query, new object[]{ID});
            return res > 0;
        }

        public bool updateDrink(string id, string nameOfDrink, string unitPrice)
        {
            string query = "USP_UpdateDrink @ID , @NAME , @UNITPRICE";
            int res = DataProvider.Instance.ExecuteNonQuery(query, new object[]{id, nameOfDrink, unitPrice});
            return res > 0;
        }
    }
}
