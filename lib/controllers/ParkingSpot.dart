import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../models/ParkingSpot.dart';
import '../services/ParkingStop.dart';

class ParkingSpotController extends GetxController {
  ParkingSpotService parkingSpotService = ParkingSpotService();
  var isLoading = false.obs;
  var listParkingSpotObs = <ParkingSpotModel>[].obs;

  static ParkingSpotController get parkingSpotController => Get.find();

  Future<dynamic> listParkingSpot() async {
    isLoading.value = true;
    var list = await parkingSpotService.fetchListParkingSpot();
    listParkingSpotObs.value = list.listParkingSpotModel;
    isLoading.value = false;
    update();
    return listParkingSpotObs;
  }

  Future<dynamic> post(ParkingSpotModel objeto) async {
    try {
      isLoading.value = true;
      var response = await parkingSpotService.fetchPostGarage(objeto);
      return response;
    } catch (error) {
      print("Erro ao postar vaga: $error");
      Get.snackbar(
        'Erro',
        'Não foi possível postar a vaga.',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return null;
    } finally {
      isLoading.value = false;
      update();
    }
  }

  Future<dynamic> deleteParkingSpot(ParkingSpotModel objeto) async {
    try {
      isLoading.value = true;
      var response = await parkingSpotService.fetchDeleteGarage(objeto);
      return response;
    } catch (error) {
      // Trate a exceção aqui
      print("Erro ao excluir vaga: $error");
      Get.snackbar(
        'Erro',
        'Não foi possível excluir a vaga.',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return null;
    } finally {
      isLoading.value = false;
      update();
    }
  }

  Future<dynamic> editParkingSpot(ParkingSpotModel objeto) async {
    try {
      isLoading.value = true;
      var response = await parkingSpotService.fetchEditGarage(objeto);
      return response;
    } catch (error) {
      // Trate a exceção aqui
      print("Erro ao editar vaga: $error");
      Get.snackbar(
        'Erro',
        'Não foi possível editar a vaga',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return null;
    } finally {
      isLoading.value = false;
      update();
    }
  }
}
