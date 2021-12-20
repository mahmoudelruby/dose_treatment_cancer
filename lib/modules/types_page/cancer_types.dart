import 'package:dose_treatment_cancer/models/cancer_model.dart';
import 'package:dose_treatment_cancer/shared/components/vertical_text.dart';
import 'package:dose_treatment_cancer/shared/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CancerTypesPage extends StatelessWidget {
  CancerTypesPage({Key? key}) : super(key: key);
  final List<CancerModel> cancer = [
    CancerModel(
        image: 'assets/images/bone_cancer.jpg',
        name: 'Bone Cancer',
        details:
            'Bone cancer can begin in any bone in the body, but it most commonly affects the pelvis or the long bones in the arms and legs. Bone cancer is rare, making up less than 1 percent of all cancers. In fact, noncancerous bone tumors are much more common than cancerous ones.'),
    CancerModel(
      image: 'assets/images/endocrine_cancer.jpg',
      name: 'Endocrine cancer',
      details:
          'Endocrine cancers are those found in tissues of the endocrine system, which includes the thyroid, adrenal, pancreas, parathyroid, and pituitary glands.',
    ),
    CancerModel(
      image: 'assets/images/skin_cancer.jpg',
      name: 'Skin Cancer',
      details:
          'Skin cancer is an abnormal growth of skin cells. It generally develops in areas that are exposed to the sun, but it can also form in places that don’t normally get sun exposure.',
    ),
    CancerModel(
      image: 'assets/images/rare_cancer.jpg',
      name: 'Rare Cancer',
      details: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondColorLight,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              mainColor,
              secondColorLight,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 250.0,
                child: Row(
                  children: const [
                    VerticalText(text: 'Cancer Types'),
                    SizedBox(width: 10.0,),
                    Expanded(
                      child: Text(
                        'Kindly, please choose cancer type.',
                        style: TextStyle(
                            color: Colors.white, fontSize: 25.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  buildGridItem(cancer[0],(){}, context,),
                  const Spacer(),
                  buildGridItem(cancer[1],(){}, context),
                ],
              ),
             const SizedBox(height: 8.0,),
              Row(
                children: [
                  buildGridItem(cancer[2],(){}, context),
                  const Spacer(),
                  buildGridItem(cancer[3],(){},context),
                ],
              ),
            ],
          ),
        )
      ),
    );
  }

  Widget buildGridItem(CancerModel model,VoidCallback imagePressed, context) => Column(
        children: [
          InkWell(
            onTap: () {
              print(model.name);
            },
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(
                  model.image,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 180.0,
            child: ExpansionTile(
              title: Text(
                model.name,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              children: [
                Text(
                  model.details,
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ],
      );
}
