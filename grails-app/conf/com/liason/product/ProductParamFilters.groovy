package com.liason.product

class ProductParamFilters
{
    def filters = {
        saveProductParam(controller:'product', action:'saveNewProduct') {
            before = {
				int rows=params.int("row",0)
				int columns=params.int("column",0)
				params.tableData=convertTableToString(params, rows, columns)
				if(params.tableData==""){
					params.row=0
					params.column=0
				}
            }
        }
    }
	
	private String convertTableToString(params,int rows,int columns)
	{
		String tableData=""
		for(int i=0;i<rows;i++)
			for(int j=0;j<columns;j++)
				tableData=tableData+params.list("R${i}C${j}")[0]+" ||"
		if(tableData.length() > 2)
			tableData=tableData.substring(0, tableData.length()-2)
		return tableData
	}
}