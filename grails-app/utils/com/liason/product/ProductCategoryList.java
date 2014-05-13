package com.liason.product;

public enum ProductCategoryList
{
	LatheMachine("Lathe Machine"),
	HeavyMachine("Heavy Machine"),
	LightMachine("Light Machine"),
	MechanicalComponents("Mechanical components"),
	HeatPumps("Heat pumps"),
	Turbine("Turbine"),
	ElectronicDevices("Electronic devices"),
	Miscellaneous("Miscellaneous"),
	Axle("Axle"),
	SpringWheel("Spring Wheel"),
	HydraulicRam("Hydraulic Ram");
	
	String name;
	
	ProductCategoryList(String name){
		this.name=name;
	}
	
	public String toString(){
		return name;
	}
}