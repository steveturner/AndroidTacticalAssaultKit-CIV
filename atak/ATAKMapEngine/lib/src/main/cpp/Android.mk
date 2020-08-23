LOCAL_PATH := $(call my-dir)

LOCAL_SHORT_COMMANDS := true
TTP_DIST_DIR := $(LOCAL_PATH)/../../../../../../takthirdparty/builds/android-$(TARGET_ARCH_ABI)-release

include $(CLEAR_VARS)
LOCAL_MODULE := takengine 
LOCAL_SRC_FILES := $(LOCAL_PATH)/../jniLibs/$(TARGET_ARCH_ABI)/libtakengine.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../../../../../../takengine/mapengine/sdk/src/
LOCAL_EXPORT_C_INCLUDES += $(LOCAL_PATH)/../../../../../../takengine/thirdparty/
LOCAL_EXPORT_C_INCLUDES += $(LOCAL_PATH)/../../../../../../takengine/include/json
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := ttp-prebuilt-gdal
LOCAL_SRC_FILES := $(LOCAL_PATH)/../jniLibs/$(TARGET_ARCH_ABI)/libgdal.so
LOCAL_EXPORT_C_INCLUDES := $(TTP_DIST_DIR)/include
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := ttp-prebuilt-spatialite
LOCAL_SRC_FILES := $(LOCAL_PATH)/../jniLibs/$(TARGET_ARCH_ABI)/libspatialite.so
LOCAL_EXPORT_C_INCLUDES := $(TTP_DIST_DIR)/include
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)


LOCAL_CFLAGS=-O3 -std=c++11 -D__GXX_EXPERIMENTAL_CXX0X__
LOCAL_CPPFLAGS := -std=c++11 -fexceptions
LOCAL_MODULE := atakjni
LOCAL_SRC_FILES := common.cpp
LOCAL_SRC_FILES += atakjni.cpp
LOCAL_SRC_FILES += jattributeset.cpp
LOCAL_SRC_FILES += jconfigoptions.cpp
LOCAL_SRC_FILES += jdatabaseimpl.cpp
LOCAL_SRC_FILES += jdatatype.cpp
LOCAL_SRC_FILES += jdrginfo.cpp
LOCAL_SRC_FILES += jegm96.cpp
LOCAL_SRC_FILES += jelevationmanager.cpp
LOCAL_SRC_FILES += jelevationsourcemanager.cpp
LOCAL_SRC_FILES += jelmgrterrainrenderservice.cpp
LOCAL_SRC_FILES += jfeature.cpp
LOCAL_SRC_FILES += jgdallibrary.cpp
LOCAL_SRC_FILES += jgeometry.cpp
LOCAL_SRC_FILES += jgeometryfactory.cpp
LOCAL_SRC_FILES += jgeocalculations.cpp
LOCAL_SRC_FILES += jgeomagneticfield.cpp
LOCAL_SRC_FILES += jglobe.cpp
LOCAL_SRC_FILES += jglmapview.cpp
LOCAL_SRC_FILES += jglquadtilenode2.cpp
LOCAL_SRC_FILES += jglrenderbatch2.cpp
LOCAL_SRC_FILES += jglninepatch.cpp
LOCAL_SRC_FILES += jgllayerfactory.cpp
LOCAL_SRC_FILES += jgllinebatch.cpp
LOCAL_SRC_FILES += jmapprojectiondisplaymodel.cpp
LOCAL_SRC_FILES += jmapscenemodel.cpp
LOCAL_SRC_FILES += jmatrix.cpp
LOCAL_SRC_FILES += jmesh.cpp
LOCAL_SRC_FILES += jmodelbuilder.cpp
LOCAL_SRC_FILES += jmodels.cpp
LOCAL_SRC_FILES += jnativeelevationchunk.cpp
LOCAL_SRC_FILES += jnativeelevationsource.cpp
LOCAL_SRC_FILES += jnativeelevationsourcecursor.cpp
LOCAL_SRC_FILES += jnativefeaturecursor.cpp
LOCAL_SRC_FILES += jnativefeaturesetcursor.cpp
LOCAL_SRC_FILES += jnativefeaturedatasource.cpp
LOCAL_SRC_FILES += jnativefeaturedatastore.cpp
LOCAL_SRC_FILES += jnativefilecursor.cpp
LOCAL_SRC_FILES += jnativegeometrymodel.cpp
LOCAL_SRC_FILES += jnativegllayer3.cpp
LOCAL_SRC_FILES += jnativegllayerspi2.cpp
LOCAL_SRC_FILES += jnativeglmaprenderable2.cpp
LOCAL_SRC_FILES += jnativelayer.cpp
LOCAL_SRC_FILES += jnativemodel.cpp
LOCAL_SRC_FILES += jnativeprojection.cpp
LOCAL_SRC_FILES += jnativerunnable.cpp
LOCAL_SRC_FILES += josrutils.cpp
LOCAL_SRC_FILES += jprojectionfactory.cpp
LOCAL_SRC_FILES += jqueryimpl.cpp
LOCAL_SRC_FILES += jrendercontextinterop.cpp
LOCAL_SRC_FILES += jstatementimpl.cpp
LOCAL_SRC_FILES += jstyle.cpp
LOCAL_SRC_FILES += junsafe.cpp
LOCAL_SRC_FILES += jpersistentdatasourcefeaturedatastore2.cpp
LOCAL_SRC_FILES += jpersistentrasterdatastore.cpp
LOCAL_SRC_FILES += jskirt.cpp
LOCAL_SRC_FILES += jtessellate.cpp
LOCAL_SRC_FILES += jvertexdatalayout.cpp

# interop
LOCAL_SRC_FILES += interop/JNIStringUTF.cpp
LOCAL_SRC_FILES += interop/JNIByteArray.cpp
LOCAL_SRC_FILES += interop/JNIDoubleArray.cpp
LOCAL_SRC_FILES += interop/JNIFloatArray.cpp
LOCAL_SRC_FILES += interop/JNIIntArray.cpp
LOCAL_SRC_FILES += interop/JNILongArray.cpp
LOCAL_SRC_FILES += interop/JNINotifyCallback.cpp
LOCAL_SRC_FILES += interop/Pointer.cpp
LOCAL_SRC_FILES += interop/db/Interop.cpp
LOCAL_SRC_FILES += interop/core/Interop.cpp
LOCAL_SRC_FILES += interop/core/ManagedLayer.cpp
LOCAL_SRC_FILES += interop/core/ManagedProjection.cpp
LOCAL_SRC_FILES += interop/core/ManagedRenderContext.cpp
LOCAL_SRC_FILES += interop/core/ManagedVisibilityListener.cpp
LOCAL_SRC_FILES += interop/elevation/Interop.cpp
LOCAL_SRC_FILES += interop/elevation/ManagedElevationChunk.cpp
LOCAL_SRC_FILES += interop/elevation/ManagedElevationSource.cpp
LOCAL_SRC_FILES += interop/feature/Interop.cpp
LOCAL_SRC_FILES += interop/feature/ManagedFeatureDataSource2.cpp
LOCAL_SRC_FILES += interop/java/JNICollection.cpp
LOCAL_SRC_FILES += interop/java/JNILocalRef.cpp
LOCAL_SRC_FILES += interop/java/JNIPair.cpp
LOCAL_SRC_FILES += interop/java/JNIPrimitive.cpp
LOCAL_SRC_FILES += interop/java/JNIRunnable.cpp
LOCAL_SRC_FILES += interop/math/Interop.cpp
LOCAL_SRC_FILES += interop/math/ManagedGeometryModel.cpp
LOCAL_SRC_FILES += interop/model/Interop.cpp
LOCAL_SRC_FILES += interop/renderer/core/Interop.cpp
LOCAL_SRC_FILES += interop/renderer/core/ManagedGLLayer2.cpp
LOCAL_SRC_FILES += interop/renderer/core/ManagedGLLayerSpi2.cpp
LOCAL_SRC_FILES += interop/renderer/core/ManagedGLMapRenderable2.cpp

# impl
LOCAL_SRC_FILES += ManagedModel.cpp

# formats
# Cesium 3D Tiles
LOCAL_SRC_FILES += c3dt/jgltf.cpp
LOCAL_SRC_FILES += c3dt/GLTF.cpp
LOCAL_SRC_FILES += c3dt/GLTFRenderer.cpp
LOCAL_SRC_FILES += c3dt/GLTFRenderer_v1.cpp
LOCAL_SRC_FILES += c3dt/GLTFRenderer_v2.cpp
LOCAL_SRC_FILES += c3dt/GLTFv1.cpp
LOCAL_SRC_FILES += c3dt/GLTFv2.cpp
LOCAL_SRC_FILES += c3dt/shaders.cpp
LOCAL_SRC_FILES += c3dt/tiny_gltf.cpp
LOCAL_SRC_FILES += c3dt/tiny_gltf_loader.cpp

#LOCAL_C_INCLUDES += c3dt/
LOCAL_LDLIBS := -llog -lGLESv3
LOCAL_SHARED_LIBRARIES := takengine
LOCAL_SHARED_LIBRARIES += ttp-prebuilt-gdal
LOCAL_SHARED_LIBRARIES += ttp-prebuilt-spatialite
LOCAL_CPPFLAGS := -DRTTI_ENABLED -DTE_GLES_VERSION=3

include $(BUILD_SHARED_LIBRARY)
