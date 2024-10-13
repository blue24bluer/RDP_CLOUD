#!/bin/bash

# تحقق من تسجيل الدخول إلى Google Cloud
if ! gcloud auth list | grep -q '*'; then
  echo "يجب تسجيل الدخول إلى Google Cloud. استخدم الأمر 'gcloud auth login'."
  exit 1
fi

# تعيين المتغيرات
INSTANCE_NAME="windows-rdp-instance"
ZONE="us-central1-a"  # يمكنك تغيير المنطقة حسب حاجتك
MACHINE_TYPE="n1-standard-1"  # نوع الآلة
WINDOWS_IMAGE="projects/windows-cloud/global/images/family/windows-2022"  # صورة Windows

# إنشاء مثيل جديد
echo "إنشاء مثيل جديد لـ Windows..."
gcloud compute instances create $INSTANCE_NAME \
  --zone=$ZONE \
  --machine-type=$MACHINE_TYPE \
  --image=$WINDOWS_IMAGE \
  --image-project=windows-cloud \
  --metadata=windows-username=your_username,windows-password=your_password  # قم بتغيير اسم المستخدم وكلمة المرور

# إظهار معلومات الاتصال
echo "===================================="
echo "تم إنشاء المثيل بنجاح!"
echo "===================================="
echo "اسم المثيل: $INSTANCE_NAME"
echo "المنطقة: $ZONE"
echo "نوع الآلة: $MACHINE_TYPE"
echo "تأكد من فتح منفذ RDP (3389) في إعدادات الجدار الناري."
echo "===================================="
