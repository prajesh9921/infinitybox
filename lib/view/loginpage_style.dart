import 'package:flutter/material.dart';

const usernameStyle = TextStyle(fontWeight: FontWeight.w600);
const titleStyle = TextStyle(fontSize: 50.0, fontWeight: FontWeight.w400);
const Login_btn_style = TextStyle(color: Colors.white, fontSize: 20.0);

var UsernameTextBox = InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          hintText: "Username or email",
                          fillColor: Color(0xFFEEEEEE));

var password_text_box = InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "password",
                            fillColor: Color(0xFFEEEEEE));

var btn_style = TextButton.styleFrom(
                      backgroundColor: Color(0xFF4EFF10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )
                    );