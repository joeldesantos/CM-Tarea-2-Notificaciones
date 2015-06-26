//
//  Home.m
//  CM-Tarea 2 Notificaciones
//
//  Created by Projects Arizaga on 25/06/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import "Home.h"
#import "Declarations.h"
#import "cellNotification.h"

@interface Home ()

@end

@implementation Home

/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-------------------------------------------------------------------------------
- (void)initController {
    maGovernors             = [[NSMutableArray alloc] initWithObjects: @"Carlos Lozano", @"Francisco Vega", @"Marcos Covarrubias", @"Fernando Ortega", @"Rubén Moreira", @"Mario Anguiano", @"Manuel Velasco", @"César Duarte",@"Miguel Mancera",@"Jorge Herrera",@"Miguel Márquez",@"Salvador Ortega",@"José Olvera",@"Aristóteles Sandoval",@"Eruviel Ávila",@"Salvador Jara",@"Graco Ramírez",@"Roberto Sandoval",@"Rodrigo Medina",@"Cabino Cué",@"Rafael Moreno",@"José Calzada",@"Roberto Borge",@"Fernando Toranzo",@"Mario López",@"Guillermo Padrés",@"Arturo Núnez",@"Egidio Torre",@"Mariano González",@"Javier Duarte",@"Rolando Zapata",@"Miguel Alonso",nil];
    maImgsPoliticalParties         = [[NSMutableArray alloc] initWithObjects: @"pri.png",@"pan.png",@"pan.png",@"pri.png",@"verde.png",@"pri.png",@"pri.png",@"pri.png",@"prd.png",@"pri.png",@"pan.png",@"prd.png",@"pri.png",@"pri.png",@"pri.png",@"ind.png",@"prd.png",@"pri.png",@"pri.png",@"mov.png",@"pan.png",@"pri.png",@"pri.png",@"pri.ong",@"pan.png",@"pan.png",@"prd.png",@"pri.png",@"pri.png",@"pri.png",@"pri.png",@"pri.png",nil];
<<<<<<< HEAD
    maStatesGobs         = [[NSMutableArray alloc] initWithObjects: @"Aguascalientes",@"Baja California",@"Baja California Sur",@"Campeche",@"Chiapas",@"Chihuahua",@"Coahuila",@"Colima",@"Distrito Federal",@"Durango",@"Guanajuato",@"Guerrero",@"Hidalgo",@"Jalisco",@"México",@"Michoacán",@"Morelos",@"Nayarit",@"Nuevo León",@"Oaxaca",@"Puebla",@"Querétaro",@"Quintana Roo",@"San Luis Potosí",@"Sinaloa",@"Sonora",@"Tabasco",@"Tamaulipas",@"Tlaxcala",@"Veracruz",@"Yucatán",@"Zacatecas",nil];
=======
    maGovernors         = [[NSMutableArray alloc] initWithObjects: @"Aguascalientes",@"Baja California",@"Baja California Sur",@"Campeche",@"Chiapas",@"Chihuahua",@"Coahuila",@"Colima",@"Distrito Federal",@"Durango",@"Guanajuato",@"Guerrero",@"Hidalgo",@"Jalisco",@"México",@"Michoacán",@"Morelos",@"Nayarit",@"Nuevo León",@"Oaxaca",@"Puebla",@"Querétaro",@"Quintana Roo",@"San Luis Potosí",@"Sinaloa",@"Sonora",@"Tabasco",@"Tamaulipas",@"Tlaxcala",@"Veracruz",@"Yucatán",@"Zacatecas",nil];
>>>>>>> 4432c6b73529f6fcdd7ae1ce6a7ed33d375e0d56
}
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return maGovernors.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Initialize cells
    cellNotification *cell = (cellNotification *)[tableView dequeueReusableCellWithIdentifier:@"cellNotification"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellNotification" bundle:nil] forCellReuseIdentifier:@"cellNotifcation"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellNotification"];
    }
    //Fill cell with info from arrays
    cell.lblTeam.text   = maGovernors[indexPath.row];
<<<<<<< HEAD
    cell.maImgsPoliticalParties.image  = [UIImage imageNamed:maImgsGobs[indexPath.row]];
=======
    cell.imgPoliticalParty.image  = [UIImage imageNamed:maImgsPoliticalParties[indexPath.row]];
>>>>>>> 4432c6b73529f6fcdd7ae1ce6a7ed33d375e0d56
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}
@end
