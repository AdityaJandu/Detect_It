import 'package:detect_it/components/my_text_fields.dart';
import 'package:detect_it/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:stability_image_generation/stability_image_generation.dart';

class ImageGenerate extends StatefulWidget {
  const ImageGenerate({super.key});

  @override
  State<ImageGenerate> createState() => _ImageGenerateState();
}

class _ImageGenerateState extends State<ImageGenerate> {
  // Text Editing Controller for prompts.
  final TextEditingController textEditingController = TextEditingController();

  // AI intialization for image.
  final StabilityAI _ai = StabilityAI();

  // API Key for generation.
  final String apiKey = 'sk-BNs7uLmWpf6BNa5aMFBvQKllvWKbvfJqQzCkO1Q0mes4RcUu';

  // Defining style for image.
  final ImageAIStyle imageAIStyle = ImageAIStyle.cyberPunk;

  // Checking whether it's running or not.
  bool run = false;

  Future<Uint8List> _generate(String query) async {
    /// Call the generateImage method with the required parameters.
    Uint8List image = await _ai.generateImage(
      apiKey: apiKey,
      imageAIStyle: imageAIStyle,
      prompt: query,
    );
    return image;
  }

  void generateImage() {
    /// Get the user input from the Controller.
    String query = textEditingController.text;
    if (query.isNotEmpty) {
      /// If the user input is not empty, set [run] to true to generate the image.
      setState(() {
        run = true;
      });
    } else {
      /// If the user input is empty, print an error message.
      if (kDebugMode) {
        print('Query is empty !!');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      // App Bar.
      appBar: AppBar(
        title: const Text(
          "Generate Now",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffddd6f3),
                Color(0xfffaaca8),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),

      // UI of the entire Screen.
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Some Spacing.
              SizedBox(
                height: mq.height * .12,
              ),

              // TextField taking the prompt as input from user.
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mq.width * .05),
                child: MyTextFields(
                  controller: textEditingController,
                  text: "Enter your prompt here...",
                  obscureText: false,
                  icon: Image.asset(
                    "assets/Images/ai_image.png",
                    scale: 17,
                  ),
                ),
              ),

              // Checking various conditions to display generated picture or text mentioning how to generate one.
              Padding(
                padding: const EdgeInsets.all(20),
                child: run
                    ? SizedBox(
                        height: mq.height * .5,
                        width: mq.width,
                        child: FutureBuilder<Uint8List>(
                          /// Call the [_generate] function to get the image data.
                          future: _generate(textEditingController.text),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              /// While waiting for the image data, display a loading indicator.
                              return Center(
                                child: LoadingAnimationWidget.twistingDots(
                                  leftDotColor: const Color(0xFF1A1A3F),
                                  rightDotColor: const Color(0xFFEA3799),
                                  size: mq.width * .1,
                                ),
                              );
                            } else if (snapshot.hasError) {
                              /// If an error occurred while getting the image data, display an error message.
                              return Text('Error: ${snapshot.error}');
                            } else if (snapshot.hasData) {
                              /// If the image data is available, display the image using Image.memory().
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.memory(snapshot.data!),
                              );
                            } else {
                              /// If no data is available, display a placeholder or an empty container.
                              return Container();
                            }
                          },
                        ),
                      )

                    // Text Instruction for how to generate image from prompt.
                    : SizedBox(
                        height: mq.height * .3,
                        width: mq.width,
                        child: Center(
                          child: Text(
                            'Enter Text and Click the button to generate \n{The Image will be Generated right here.}',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
              ),

              // Button to generate image.
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: mq.width * .18,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 253, 105, 117),
                        Color.fromARGB(255, 254, 200, 125),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  height: mq.height * .063,
                  child: InkWell(
                    onTap: generateImage,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          CupertinoIcons.camera,
                          size: 34,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Generate Now",
                          style: TextStyle(
                            fontSize: 19,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
