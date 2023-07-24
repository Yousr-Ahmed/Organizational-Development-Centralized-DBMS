using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Reflection;

namespace MCITTrainingAPP
{
    public class ProjectHelper
    {
        public bool CheckDate(string date)
        {
            try
            {
                DateTime dt = DateTime.Parse(date);
                return true;
            }
            catch
            {
                return false;
            }

        }
        public bool IsValidDate(string tempDate)
        {
            //CultureInfo uk = new CultureInfo("en-GB");
            //string shortUkDateFormatString = uk.DateTimeFormat.ShortDatePattern;
            DateTime dt;
            string ddd = Convert.ToDateTime(tempDate).ToString("dd/mm/yyyy");
            string[] formats = { "dd/mm/yyyy" }; 

            if (!DateTime.TryParseExact(ddd, formats, CultureInfo.InvariantCulture, DateTimeStyles.None, out dt))
            {
                return false;
            }
            return true;
        }
        public bool IsDate(string tempDate)
        {
            DateTime fromDateValue;
            var formats = new[] { "dd/MM/yyyy hh:mm tt", "MM/dd/yyyy hh:mm tt", "dd-MM-yyyy hh:mm tt", "MM-dd-yyyy hh:mm tt" };
            if (DateTime.TryParseExact(tempDate, formats, CultureInfo.InvariantCulture, System.Globalization.DateTimeStyles.None, out fromDateValue))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// An better method to verify whether a value is 
        /// kosher for SQL Server datetime. This uses the native library
        /// for checking range values
        /// </summary>
        /// <param name="someval">A date string that may parse</param>
        /// <returns>true if the parameter is valid for SQL Sever datetime</returns>
        public bool IsValidSqlDateTimeNative(string someval)
        {
            bool valid = false;
            DateTime testDate = DateTime.MinValue;
            System.Data.SqlTypes.SqlDateTime sdt;
            if (DateTime.TryParse(someval, out testDate))
            {
                try
                {
                    // take advantage of the native conversion
                    sdt = new System.Data.SqlTypes.SqlDateTime(testDate);
                    valid = true;
                }
                catch (System.Data.SqlTypes.SqlTypeException ex)
                {

                    // no need to do anything, this is the expected out of range error
                }
            }

            return valid;
        }


        public bool IsDateBeforeOrToday(string input)
        {
            DateTime pDate;
            if (!DateTime.TryParseExact(input, "MM/dd/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out pDate))
            {
                //Invalid date
                //log , show error
                return false;
            }
            return DateTime.Today <= pDate;
        }

        private static List<T> ConvertDataTable<T>(DataTable dt)
        {
            List<T> data = new List<T>();
            foreach (DataRow row in dt.Rows)
            {
                T item = GetItem<T>(row);
                data.Add(item);
            }
            return data;
        }
        private static T GetItem<T>(DataRow dr)
        {
            Type temp = typeof(T);
            T obj = Activator.CreateInstance<T>();

            foreach (DataColumn column in dr.Table.Columns)
            {
                foreach (PropertyInfo pro in temp.GetProperties())
                {
                    if (pro.Name == column.ColumnName)
                        pro.SetValue(obj, dr[column.ColumnName], null);
                    else
                        continue;
                }
            }
            return obj;
        }

       
    }
}
