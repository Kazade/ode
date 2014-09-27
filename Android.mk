LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE	:= ode
LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/ode/include \
    $(LOCAL_PATH)/ode/src \
    $(LOCAL_PATH)/libccd/src \
    $(LOCAL_PATH)/OPCODE \
    $(LOCAL_PATH)/ou/include


LOCAL_SRC_FILES :=      \
    OPCODE/OPC_AABBCollider.cpp \
    OPCODE/OPC_AABBTree.cpp \
    OPCODE/OPC_BaseModel.cpp \
    OPCODE/OPC_Collider.cpp \
    OPCODE/OPC_Common.cpp \
    OPCODE/OPC_HybridModel.cpp \
    OPCODE/OPC_LSSCollider.cpp \
    OPCODE/OPC_MeshInterface.cpp \
    OPCODE/OPC_Model.cpp \
    OPCODE/OPC_OBBCollider.cpp \
    OPCODE/OPC_OptimizedTree.cpp \
    OPCODE/OPC_Picking.cpp \
    OPCODE/OPC_PlanesCollider.cpp \
    OPCODE/OPC_RayCollider.cpp \
    OPCODE/OPC_SphereCollider.cpp \
    OPCODE/OPC_TreeBuilders.cpp \
    OPCODE/OPC_TreeCollider.cpp \
    OPCODE/OPC_VolumeCollider.cpp \
    OPCODE/Opcode.cpp \
    OPCODE/Ice/IceAABB.cpp \
    OPCODE/Ice/IceContainer.cpp \
    OPCODE/Ice/IceHPoint.cpp \
    OPCODE/Ice/IceIndexedTriangle.cpp \
    OPCODE/Ice/IceMatrix3x3.cpp \
    OPCODE/Ice/IceMatrix4x4.cpp \
    OPCODE/Ice/IceOBB.cpp \
    OPCODE/Ice/IcePlane.cpp \
    OPCODE/Ice/IcePoint.cpp \
    OPCODE/Ice/IceRandom.cpp \
    OPCODE/Ice/IceRay.cpp \
    OPCODE/Ice/IceRevisitedRadix.cpp \
    OPCODE/Ice/IceSegment.cpp \
    OPCODE/Ice/IceTriangle.cpp \
    OPCODE/Ice/IceUtils.cpp \
    $(LOCAL_PATH)/ode/src/fastdot.c \
    $(LOCAL_PATH)/ode/src/fastldlt.c \
    $(LOCAL_PATH)/ode/src/fastlsolve.c \
    $(LOCAL_PATH)/ode/src/fastltsolve.c \
    $(LOCAL_PATH)/ode/src/nextafterf.c \
    $(LOCAL_PATH)/ode/src/array.cpp \
    $(LOCAL_PATH)/ode/src/box.cpp \
    $(LOCAL_PATH)/ode/src/capsule.cpp \
    $(LOCAL_PATH)/ode/src/collision_cylinder_box.cpp \
    $(LOCAL_PATH)/ode/src/collision_cylinder_plane.cpp \
    $(LOCAL_PATH)/ode/src/collision_cylinder_sphere.cpp \
    $(LOCAL_PATH)/ode/src/collision_cylinder_trimesh.cpp \
    $(LOCAL_PATH)/ode/src/collision_kernel.cpp \
    $(LOCAL_PATH)/ode/src/collision_libccd.cpp \
    $(LOCAL_PATH)/ode/src/collision_quadtreespace.cpp \
    $(LOCAL_PATH)/ode/src/collision_sapspace.cpp \
    $(LOCAL_PATH)/ode/src/collision_space.cpp \
    $(LOCAL_PATH)/ode/src/collision_transform.cpp \
    $(LOCAL_PATH)/ode/src/collision_trimesh_box.cpp \
    $(LOCAL_PATH)/ode/src/collision_trimesh_ccylinder.cpp \
    $(LOCAL_PATH)/ode/src/collision_trimesh_disabled.cpp \
    $(LOCAL_PATH)/ode/src/collision_trimesh_distance.cpp \
    $(LOCAL_PATH)/ode/src/collision_trimesh_gimpact.cpp \
    $(LOCAL_PATH)/ode/src/collision_trimesh_opcode.cpp \
    $(LOCAL_PATH)/ode/src/collision_trimesh_plane.cpp \
    $(LOCAL_PATH)/ode/src/collision_trimesh_ray.cpp \
    $(LOCAL_PATH)/ode/src/collision_trimesh_sphere.cpp \
    $(LOCAL_PATH)/ode/src/collision_trimesh_trimesh.cpp \
    $(LOCAL_PATH)/ode/src/collision_trimesh_trimesh_new.cpp \
    $(LOCAL_PATH)/ode/src/collision_util.cpp \
    $(LOCAL_PATH)/ode/src/convex.cpp \
    $(LOCAL_PATH)/ode/src/cylinder.cpp \
    $(LOCAL_PATH)/ode/src/error.cpp \
    $(LOCAL_PATH)/ode/src/export-dif.cpp \
    $(LOCAL_PATH)/ode/src/heightfield.cpp \
    $(LOCAL_PATH)/ode/src/lcp.cpp \
    $(LOCAL_PATH)/ode/src/mass.cpp \
    $(LOCAL_PATH)/ode/src/mat.cpp \
    $(LOCAL_PATH)/ode/src/matrix.cpp \
    $(LOCAL_PATH)/ode/src/memory.cpp \
    $(LOCAL_PATH)/ode/src/misc.cpp \
    $(LOCAL_PATH)/ode/src/objects.cpp \
    $(LOCAL_PATH)/ode/src/obstack.cpp \
    $(LOCAL_PATH)/ode/src/ode.cpp \
    $(LOCAL_PATH)/ode/src/odeinit.cpp \
    $(LOCAL_PATH)/ode/src/odemath.cpp \
    $(LOCAL_PATH)/ode/src/odeou.cpp \
    $(LOCAL_PATH)/ode/src/odetls.cpp \
    $(LOCAL_PATH)/ode/src/plane.cpp \
    $(LOCAL_PATH)/ode/src/quickstep.cpp \
    $(LOCAL_PATH)/ode/src/ray.cpp \
    $(LOCAL_PATH)/ode/src/rotation.cpp \
    $(LOCAL_PATH)/ode/src/sphere.cpp \
    $(LOCAL_PATH)/ode/src/step.cpp \
    $(LOCAL_PATH)/ode/src/threading_base.cpp \
    $(LOCAL_PATH)/ode/src/threading_impl.cpp \
    $(LOCAL_PATH)/ode/src/threading_pool_posix.cpp \
    $(LOCAL_PATH)/ode/src/threading_pool_win.cpp \
    $(LOCAL_PATH)/ode/src/timer.cpp \
    $(LOCAL_PATH)/ode/src/util.cpp \
    $(LOCAL_PATH)/ode/src/joints/amotor.cpp \
    $(LOCAL_PATH)/ode/src/joints/ball.cpp \
    $(LOCAL_PATH)/ode/src/joints/contact.cpp \
    $(LOCAL_PATH)/ode/src/joints/dball.cpp \
    $(LOCAL_PATH)/ode/src/joints/dhinge.cpp \
    $(LOCAL_PATH)/ode/src/joints/fixed.cpp \
    $(LOCAL_PATH)/ode/src/joints/hinge.cpp \
    $(LOCAL_PATH)/ode/src/joints/hinge2.cpp \
    $(LOCAL_PATH)/ode/src/joints/joint.cpp \
    $(LOCAL_PATH)/ode/src/joints/lmotor.cpp \
    $(LOCAL_PATH)/ode/src/joints/null.cpp \
    $(LOCAL_PATH)/ode/src/joints/piston.cpp \
    $(LOCAL_PATH)/ode/src/joints/plane2d.cpp \
    $(LOCAL_PATH)/ode/src/joints/pr.cpp \
    $(LOCAL_PATH)/ode/src/joints/pu.cpp \
    $(LOCAL_PATH)/ode/src/joints/slider.cpp \
    $(LOCAL_PATH)/ode/src/joints/transmission.cpp \
    $(LOCAL_PATH)/ode/src/joints/universal.cpp \
    libccd/src/alloc.c \
    libccd/src/ccd.c \
    libccd/src/mpr.c \
    libccd/src/polytope.c \
    libccd/src/support.c \
    libccd/src/vec3.c \
    ou/src/ou/atomic.cpp \
    ou/src/ou/customization.cpp \
    ou/src/ou/malloc.cpp \
    ou/src/ou/threadlocalstorage.cpp \


LOCAL_CPPFLAGS := -DdIDESINGLE -DCCD_IDESINGLE -DdTHREADING_INTF_DISABLED
LOCAL_CFLAGS +=  -DANDROID -DHAVE_CONFIG_H  -IOPCODE  -IOPCODE/Ice -DdTRIMESH_ENABLED -DdTRIMESH_OPCODE  -Ilibccd/src -DdLIBCCD_ENABLED -DdLIBCCD_CYL_CYL -DdLIBCCD_CAP_CYL -DdLIBCCD_CONVEX_BOX -DdLIBCCD_CONVEX_CAP -DdLIBCCD_CONVEX_CYL -DdLIBCCD_CONVEX_SPHERE -DdLIBCCD_CONVEX_CONVEX
LOCAL_CPPFLAGS += -DANDROID -DHAVE_CONFIG_H -IOPCODE  -IOPCODE/Ice -DdTRIMESH_ENABLED -DdTRIMESH_OPCODE  -Ilibccd/src -DdLIBCCD_ENABLED -DdLIBCCD_CYL_CYL -DdLIBCCD_CAP_CYL -DdLIBCCD_CONVEX_BOX -DdLIBCCD_CONVEX_CAP -DdLIBCCD_CONVEX_CYL -DdLIBCCD_CONVEX_SPHERE -DdLIBCCD_CONVEX_CONVEX

LOCAL_SRC_FILES := $(LOCAL_SRC_FILES:$(LOCAL_PATH)/%=%)
LOCAL_CPPFLAGS	+= "-std=c++11"

include $(BUILD_SHARED_LIBRARY)
