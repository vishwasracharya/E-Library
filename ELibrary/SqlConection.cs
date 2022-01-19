using System;
using System.Data;

namespace ELibrary
{
    internal class SqlConection
    {
        private string strcon;

        public SqlConection(string strcon)
        {
            this.strcon = strcon;
        }

        public ConnectionState State { get; internal set; }

        internal void Open()
        {
            throw new NotImplementedException();
        }
    }
}