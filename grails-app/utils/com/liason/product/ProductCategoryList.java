package com.liason.product;

public enum ProductCategoryList
{
	LatheMachine("Lathe Machine"),
	DrillingMachines("Drilling Machines"),
	MillingMachines("Milling Machines"),
	Presses("Presses"),
	Sheet_shearing_Bending_Rolling_Machines("Sheet shearing - Bending - Rolling Machines"),
	Shaping_Planning_Planomiller("Shaping-Planning - Planomiller"),
	Hacksaw_slotting_Cutting_Machines("Hacksaw -  slotting -  Cutting Machines"),
	VerticalTurningFacingHeavyDutyLathe("Vertical Turning & Facing Heavy Duty Lathe"),
	UniversalGearHobingMachines("Universal Gear Hobing Machines"),
	HorizontalBoringMachine("Horizontal Boring Machine"),
	GrindingMachines("Grinding Machines"),
	SheetMetalmachines("Sheet Metal machines"),
	SHeetCuttingBendingMachines("SHeet Cutting & Bending Machines"),
	PipeBendingMachines("Pipe Bending Machines"),
	HandPressesTorToggleRodCuttingMachines("Hand Presses - Tor - Toggle Rod Cutting Machines"),
	GasCuttingMachine("Gas Cutting Machine"),
	WorkshopHandlingequipment("Workshop Handling equipment"),
	CircleCuttingMachine("Circle Cutting Machine"),
	WoodWorkingMachines("Wood Working Machines"),
	ModularFurnitureProcessingMachines("Modular Furniture Processing Machines"),
	GarageWorkshopMachines("Garage Workshop Machines"),
	machineToolsandmillingAccessories("machine Tools and milling Accessories"),
	SmallScaleIndustrialPlants("Small Scale Industrial Plants"),
	BoltandScrewMakingMachines("Bolt and Screw Making Machines"),
	LatheMillingAddaSolttingGrinderRivet("Lathe - Milling Adda - Soltting - Grinder -  Rivet"),
	RollFormingMachines("Roll Forming Machines"),
	HoseCrimpingMachines("Hose Crimping Machines"),
	RivetingMachines("Riveting Machines"),
	ContructionMachines("Contruction Machines"),
	CoilWindingmachines("Coil Winding machines"),
	Weldingmachines("Welding machines"),
	CutoffMachines("Cut off Machines"),
	Boltandpipethreadingmachines("Bolt and pipe threading machines"),
	Ductingmachinery("Ducting machinery");
	
	String name;
	
	ProductCategoryList(String name){
		this.name=name;
	}
	
	public String toString(){
		return name;
	}
}