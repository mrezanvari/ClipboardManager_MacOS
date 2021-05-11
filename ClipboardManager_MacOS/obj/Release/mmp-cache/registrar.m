#include <xamarin/xamarin.h>
#include "registrar.h"
extern "C" {
static void native_to_managed_trampoline_1 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE_OR_DETACHED;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		GCHandle reflection_method_handle = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		MonoReflectionMethod *reflection_method = (MonoReflectionMethod *) xamarin_gchandle_unwrap (reflection_method_handle);if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static BOOL native_to_managed_trampoline_2 (id self, SEL _cmd, MonoMethod **managed_method_ptr, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE_OR_DETACHED;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		GCHandle reflection_method_handle = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		MonoReflectionMethod *reflection_method = (MonoReflectionMethod *) xamarin_gchandle_unwrap (reflection_method_handle);if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_3 (id self, SEL _cmd, MonoMethod **managed_method_ptr, void * p0, uint32_t token_ref)
{
	void * a0 = p0;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE_OR_DETACHED;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		GCHandle reflection_method_handle = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		MonoReflectionMethod *reflection_method = (MonoReflectionMethod *) xamarin_gchandle_unwrap (reflection_method_handle);if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &a0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static id native_to_managed_trampoline_4 (id self, SEL _cmd, MonoMethod **managed_method_ptr, bool* call_super, uint32_t token_ref)
{
	uint8_t flags = NSObjectFlagsNativeRef;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE_OR_DETACHED;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	bool has_nsobject = xamarin_has_nsobject (self, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	if (has_nsobject) {
		*call_super = true;
		goto exception_handling;
	}
	if (!managed_method) {
		GCHandle reflection_method_handle = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		MonoReflectionMethod *reflection_method = (MonoReflectionMethod *) xamarin_gchandle_unwrap (reflection_method_handle);if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (managed_method));
	xamarin_set_nsobject_handle (mthis, self);
	xamarin_set_nsobject_flags (mthis, flags);
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);
	xamarin_create_managed_ref (self, mthis, true);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return self;
}


static void native_to_managed_trampoline_5 (id self, SEL _cmd, MonoMethod **managed_method_ptr, uint32_t token_ref)
{
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE_OR_DETACHED;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		GCHandle reflection_method_handle = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		MonoReflectionMethod *reflection_method = (MonoReflectionMethod *) xamarin_gchandle_unwrap (reflection_method_handle);if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_6 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE_OR_DETACHED;
	MONO_THREAD_ATTACH;

	if (!managed_method) {
		GCHandle reflection_method_handle = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		MonoReflectionMethod *reflection_method = (MonoReflectionMethod *) xamarin_gchandle_unwrap (reflection_method_handle);if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) {
			exception_gchandle = xamarin_get_exception_for_parameter (8029, exception_gchandle, "Unable to marshal the parameter", _cmd, managed_method, paramtype0, 0, true);
			goto exception_handling;
		}
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, NULL, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static id native_to_managed_trampoline_7 (id self, SEL _cmd, MonoMethod **managed_method_ptr, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	id res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE_OR_DETACHED;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		GCHandle reflection_method_handle = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		MonoReflectionMethod *reflection_method = (MonoReflectionMethod *) xamarin_gchandle_unwrap (reflection_method_handle);if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}




@interface __monomac_internal_ActionDispatcher : NSObject {
}
	-(void) release;
	-(id) retain;
	-(uint32_t) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (uint32_t) gchandle;
	-(void) __monomac_internal_ActionDispatcher_activated:(NSObject *)p0;
	-(void) __monomac_internal_ActionDispatcher_doubleActivated:(NSObject *)p0;
	-(BOOL) worksWhenModal;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation __monomac_internal_ActionDispatcher {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(uint32_t) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (uint32_t) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) __monomac_internal_ActionDispatcher_activated:(NSObject *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, 0x33E0E);
	}

	-(void) __monomac_internal_ActionDispatcher_doubleActivated:(NSObject *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, 0x33F0E);
	}

	-(BOOL) worksWhenModal
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, 0x3430E);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, 0x5D20E);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_4 (self, _cmd, &managed_method, &call_super, 0x3400E);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation NSApplicationDelegate {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_4 (self, _cmd, &managed_method, &call_super, 0x3D80E);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

@interface Foundation_NSDispatcher : NSObject {
}
	-(void) release;
	-(id) retain;
	-(uint32_t) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (uint32_t) gchandle;
	-(void) xamarinApplySelector;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Foundation_NSDispatcher {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(uint32_t) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (uint32_t) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, 0x59F0E);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, 0x5D20E);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_4 (self, _cmd, &managed_method, &call_super, 0x59E0E);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface __MonoMac_NSActionDispatcher : Foundation_NSDispatcher {
}
	-(void) xamarinApplySelector;
@end

@implementation __MonoMac_NSActionDispatcher {
}

	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, 0x5A20E);
	}
@end

@interface __MonoMac_NSSynchronizationContextDispatcher : Foundation_NSDispatcher {
}
	-(void) xamarinApplySelector;
@end

@implementation __MonoMac_NSSynchronizationContextDispatcher {
}

	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, 0x5A40E);
	}
@end

@interface Foundation_NSAsyncDispatcher : Foundation_NSDispatcher {
}
	-(void) xamarinApplySelector;
	-(id) init;
@end

@implementation Foundation_NSAsyncDispatcher {
}

	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, 0x5A60E);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_4 (self, _cmd, &managed_method, &call_super, 0x5A50E);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Foundation_NSDispatcher class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface __MonoMac_NSAsyncSynchronizationContextDispatcher : Foundation_NSAsyncDispatcher {
}
	-(void) xamarinApplySelector;
@end

@implementation __MonoMac_NSAsyncSynchronizationContextDispatcher {
}

	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, 0x5A80E);
	}
@end

@implementation __NSGestureRecognizerToken {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(uint32_t) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (uint32_t) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, 0x5D20E);
	}
@end

@implementation __NSGestureRecognizerParameterlessToken {
}

	-(void) target
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, 0x3830E);
	}
@end

@implementation __NSGestureRecognizerParametrizedToken {
}

	-(void) target:(NSGestureRecognizer *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, 0x3840E);
	}
@end

@interface __NSClickGestureRecognizer : __NSGestureRecognizerToken {
}
	-(void) target:(NSClickGestureRecognizer *)p0;
@end

@implementation __NSClickGestureRecognizer {
}

	-(void) target:(NSClickGestureRecognizer *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, 0x3880E);
	}
@end

@interface __NSMagnificationGestureRecognizer : __NSGestureRecognizerToken {
}
	-(void) target:(NSMagnificationGestureRecognizer *)p0;
@end

@implementation __NSMagnificationGestureRecognizer {
}

	-(void) target:(NSMagnificationGestureRecognizer *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, 0x38C0E);
	}
@end

@interface __NSPanGestureRecognizer : __NSGestureRecognizerToken {
}
	-(void) target:(NSPanGestureRecognizer *)p0;
@end

@implementation __NSPanGestureRecognizer {
}

	-(void) target:(NSPanGestureRecognizer *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, 0x3900E);
	}
@end

@interface __NSPressGestureRecognizer : __NSGestureRecognizerToken {
}
	-(void) target:(NSPressGestureRecognizer *)p0;
@end

@implementation __NSPressGestureRecognizer {
}

	-(void) target:(NSPressGestureRecognizer *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, 0x3940E);
	}
@end

@interface __NSRotationGestureRecognizer : __NSGestureRecognizerToken {
}
	-(void) target:(NSRotationGestureRecognizer *)p0;
@end

@implementation __NSRotationGestureRecognizer {
}

	-(void) target:(NSRotationGestureRecognizer *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, 0x3980E);
	}
@end

@interface __NSObject_Disposer : NSObject {
}
	-(void) release;
	-(id) retain;
	-(uint32_t) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (uint32_t) gchandle;
	+(void) drain:(NSObject *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation __NSObject_Disposer {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(uint32_t) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (uint32_t) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	+(void) drain:(NSObject *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, 0x5ED0E);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, 0x5D20E);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_4 (self, _cmd, &managed_method, &call_super, 0x5EB0E);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation AppDelegate {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(uint32_t) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (uint32_t) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) applicationDidFinishLaunching:(NSNotification *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, 0x312);
	}

	-(void) applicationWillTerminate:(NSNotification *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, 0x512);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, 0x5D20E);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_4 (self, _cmd, &managed_method, &call_super, 0x212);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation ViewController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(uint32_t) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (uint32_t) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(NSTextField *) lblNumOfItems
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_7 (self, _cmd, &managed_method, 0xC12);
	}

	-(void) setLblNumOfItems:(NSTextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, 0xD12);
	}

	-(NSSwitch *) OnOffSwitch_OBJ
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_7 (self, _cmd, &managed_method, 0xE12);
	}

	-(void) setOnOffSwitch_OBJ:(NSSwitch *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, 0xF12);
	}

	-(NSTextView *) txtBox_ClipboardItems
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_7 (self, _cmd, &managed_method, 0x1012);
	}

	-(void) setTxtBox_ClipboardItems:(NSTextView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, 0x1112);
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, 0x812);
	}

	-(NSObject *) representedObject
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_7 (self, _cmd, &managed_method, 0xA12);
	}

	-(void) setRepresentedObject:(NSObject *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, 0xB12);
	}

	-(void) btnAppendAll_Clicked:(NSObject *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, 0x1212);
	}

	-(void) btnClearAll_Clicked:(NSObject *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, 0x1312);
	}

	-(void) btnQuit_Clicked:(NSObject *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, 0x1412);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, 0x5D20E);
	}
@end

	static MTClassMap __xamarin_class_map [] = {
		{ NULL, 0xCC0E /* #0 'NSObject' => 'Foundation.NSObject, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x720E /* #1 '__monomac_internal_ActionDispatcher' => 'AppKit.ActionDispatcher, Xamarin.Mac' */, (MTTypeFlags) (2) /* UserType */ },
		{ NULL, 0x9F0E /* #2 'NSResponder' => 'AppKit.NSResponder, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x740E /* #3 'NSApplication' => 'AppKit.NSApplication, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x750E /* #4 'NSStatusItem' => 'AppKit.NSStatusItem, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x8F0E /* #5 'NSView' => 'AppKit.NSView, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x780E /* #6 'NSControl' => 'AppKit.NSControl, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x760E /* #7 'NSButton' => 'AppKit.NSButton, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x770E /* #8 'NSColor' => 'AppKit.NSColor, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x790E /* #9 'NSPasteboard' => 'AppKit.NSPasteboard, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x7A0E /* #10 'NSFont' => 'AppKit.NSFont, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x890E /* #11 'NSImage' => 'AppKit.NSImage, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x8B0E /* #12 'NSStatusBar' => 'AppKit.NSStatusBar, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x8D0E /* #13 'NSTextField' => 'AppKit.NSTextField, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xAF0E /* #14 'NSAttributedString' => 'Foundation.NSAttributedString, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xB30E /* #15 'NSMutableAttributedString' => 'Foundation.NSMutableAttributedString, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x8E0E /* #16 'NSTextStorage' => 'AppKit.NSTextStorage, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x970E /* #17 'NSApplicationDelegate' => 'AppKit.NSApplicationDelegate, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x980E /* #18 'NSColorSpace' => 'AppKit.NSColorSpace, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x990E /* #19 'NSCursor' => 'AppKit.NSCursor, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x9A0E /* #20 'NSGlyphInfo' => 'AppKit.NSGlyphInfo, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x9D0E /* #21 'NSParagraphStyle' => 'AppKit.NSParagraphStyle, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x9E0E /* #22 'NSPopover' => 'AppKit.NSPopover, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xA00E /* #23 'NSShadow' => 'AppKit.NSShadow, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xA10E /* #24 'NSStatusBarButton' => 'AppKit.NSStatusBarButton, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xA20E /* #25 'NSStoryboard' => 'AppKit.NSStoryboard, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xA40E /* #26 'NSSwitch' => 'AppKit.NSSwitch, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xA50E /* #27 'NSText' => 'AppKit.NSText, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xA60E /* #28 'NSTextAlternatives' => 'AppKit.NSTextAlternatives, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xA70E /* #29 'NSTextAttachment' => 'AppKit.NSTextAttachment, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xA80E /* #30 'NSTextView' => 'AppKit.NSTextView, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xA90E /* #31 'NSViewController' => 'AppKit.NSViewController, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xAE0E /* #32 'NSArray' => 'Foundation.NSArray, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xB00E /* #33 'NSBundle' => 'Foundation.NSBundle, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xB60E /* #34 'NSNull' => 'Foundation.NSNull, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xB70E /* #35 'NSRunLoop' => 'Foundation.NSRunLoop, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xB80E /* #36 'NSString' => 'Foundation.NSString, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xB90E /* #37 'NSURL' => 'Foundation.NSUrl, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xC40E /* #38 'Foundation_NSDispatcher' => 'Foundation.NSDispatcher, Xamarin.Mac' */, (MTTypeFlags) (2) /* UserType */ },
		{ NULL, 0xC50E /* #39 '__MonoMac_NSActionDispatcher' => 'Foundation.NSActionDispatcher, Xamarin.Mac' */, (MTTypeFlags) (2) /* UserType */ },
		{ NULL, 0xC60E /* #40 '__MonoMac_NSSynchronizationContextDispatcher' => 'Foundation.NSSynchronizationContextDispatcher, Xamarin.Mac' */, (MTTypeFlags) (2) /* UserType */ },
		{ NULL, 0xC70E /* #41 'Foundation_NSAsyncDispatcher' => 'Foundation.NSAsyncDispatcher, Xamarin.Mac' */, (MTTypeFlags) (2) /* UserType */ },
		{ NULL, 0xC80E /* #42 '__MonoMac_NSAsyncSynchronizationContextDispatcher' => 'Foundation.NSAsyncSynchronizationContextDispatcher, Xamarin.Mac' */, (MTTypeFlags) (2) /* UserType */ },
		{ NULL, 0xC90E /* #43 'NSAutoreleasePool' => 'Foundation.NSAutoreleasePool, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xD00E /* #44 'NSValue' => 'Foundation.NSValue, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xCA0E /* #45 'NSNumber' => 'Foundation.NSNumber, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xD40E /* #46 'NSException' => 'Foundation.NSException, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xD50E /* #47 'NSNotification' => 'Foundation.NSNotification, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x7C0E /* #48 '__NSGestureRecognizerToken' => 'AppKit.NSGestureRecognizer+Token, Xamarin.Mac' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x7D0E /* #49 '__NSGestureRecognizerParameterlessToken' => 'AppKit.NSGestureRecognizer+ParameterlessDispatch, Xamarin.Mac' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x7E0E /* #50 '__NSGestureRecognizerParametrizedToken' => 'AppKit.NSGestureRecognizer+ParametrizedDispatch, Xamarin.Mac' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x7B0E /* #51 'NSGestureRecognizer' => 'AppKit.NSGestureRecognizer, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x800E /* #52 '__NSClickGestureRecognizer' => 'AppKit.NSClickGestureRecognizer+Callback, Xamarin.Mac' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x7F0E /* #53 'NSClickGestureRecognizer' => 'AppKit.NSClickGestureRecognizer, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x820E /* #54 '__NSMagnificationGestureRecognizer' => 'AppKit.NSMagnificationGestureRecognizer+Callback, Xamarin.Mac' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x810E /* #55 'NSMagnificationGestureRecognizer' => 'AppKit.NSMagnificationGestureRecognizer, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x840E /* #56 '__NSPanGestureRecognizer' => 'AppKit.NSPanGestureRecognizer+Callback, Xamarin.Mac' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x830E /* #57 'NSPanGestureRecognizer' => 'AppKit.NSPanGestureRecognizer, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x860E /* #58 '__NSPressGestureRecognizer' => 'AppKit.NSPressGestureRecognizer+Callback, Xamarin.Mac' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x850E /* #59 'NSPressGestureRecognizer' => 'AppKit.NSPressGestureRecognizer, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x880E /* #60 '__NSRotationGestureRecognizer' => 'AppKit.NSRotationGestureRecognizer+Callback, Xamarin.Mac' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x870E /* #61 'NSRotationGestureRecognizer' => 'AppKit.NSRotationGestureRecognizer, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xB10E /* #62 'NSDictionary' => 'Foundation.NSDictionary, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xB40E /* #63 'NSMutableDictionary' => 'Foundation.NSMutableDictionary, Xamarin.Mac' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xCE0E /* #64 '__NSObject_Disposer' => 'Foundation.NSObject+NSObject_Disposer, Xamarin.Mac' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x312 /* #65 'AppDelegate' => 'ClipboardManager_MacOS.AppDelegate, Simple Clipboard Manager' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x412 /* #66 'ViewController' => 'ClipboardManager_MacOS.ViewController, Simple Clipboard Manager' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0 },
	};

	static const char *__xamarin_registration_assemblies []= {
		"mscorlib", 
		"System.Core", 
		"System", 
		"Mono.Security", 
		"System.Xml", 
		"System.Numerics", 
		"System.Drawing.Common", 
		"Xamarin.Mac", 
		"System.Net.Http", 
		"Simple Clipboard Manager"
	};

	static struct MTRegistrationMap __xamarin_registration_map = {
		__xamarin_registration_assemblies,
		__xamarin_class_map,
		NULL,
		NULL,
		NULL,
		{ NULL, NULL },
		10,
		67,
		0,
		0,
		0,
		0
	};

void xamarin_create_classes () {
	__xamarin_class_map [0].handle = objc_getClass ("NSObject");
	__xamarin_class_map [1].handle = objc_getClass ("__monomac_internal_ActionDispatcher");
	__xamarin_class_map [2].handle = objc_getClass ("NSResponder");
	__xamarin_class_map [3].handle = objc_getClass ("NSApplication");
	__xamarin_class_map [4].handle = objc_getClass ("NSStatusItem");
	__xamarin_class_map [5].handle = objc_getClass ("NSView");
	__xamarin_class_map [6].handle = objc_getClass ("NSControl");
	__xamarin_class_map [7].handle = objc_getClass ("NSButton");
	__xamarin_class_map [8].handle = objc_getClass ("NSColor");
	__xamarin_class_map [9].handle = objc_getClass ("NSPasteboard");
	__xamarin_class_map [10].handle = objc_getClass ("NSFont");
	__xamarin_class_map [11].handle = objc_getClass ("NSImage");
	__xamarin_class_map [12].handle = objc_getClass ("NSStatusBar");
	__xamarin_class_map [13].handle = objc_getClass ("NSTextField");
	__xamarin_class_map [14].handle = objc_getClass ("NSAttributedString");
	__xamarin_class_map [15].handle = objc_getClass ("NSMutableAttributedString");
	__xamarin_class_map [16].handle = objc_getClass ("NSTextStorage");
	__xamarin_class_map [17].handle = objc_getClass ("NSApplicationDelegate");
	__xamarin_class_map [18].handle = objc_getClass ("NSColorSpace");
	__xamarin_class_map [19].handle = objc_getClass ("NSCursor");
	__xamarin_class_map [20].handle = objc_getClass ("NSGlyphInfo");
	__xamarin_class_map [21].handle = objc_getClass ("NSParagraphStyle");
	__xamarin_class_map [22].handle = objc_getClass ("NSPopover");
	__xamarin_class_map [23].handle = objc_getClass ("NSShadow");
	__xamarin_class_map [24].handle = objc_getClass ("NSStatusBarButton");
	__xamarin_class_map [25].handle = objc_getClass ("NSStoryboard");
	__xamarin_class_map [26].handle = objc_getClass ("NSSwitch");
	__xamarin_class_map [27].handle = objc_getClass ("NSText");
	__xamarin_class_map [28].handle = objc_getClass ("NSTextAlternatives");
	__xamarin_class_map [29].handle = objc_getClass ("NSTextAttachment");
	__xamarin_class_map [30].handle = objc_getClass ("NSTextView");
	__xamarin_class_map [31].handle = objc_getClass ("NSViewController");
	__xamarin_class_map [32].handle = objc_getClass ("NSArray");
	__xamarin_class_map [33].handle = objc_getClass ("NSBundle");
	__xamarin_class_map [34].handle = objc_getClass ("NSNull");
	__xamarin_class_map [35].handle = objc_getClass ("NSRunLoop");
	__xamarin_class_map [36].handle = objc_getClass ("NSString");
	__xamarin_class_map [37].handle = objc_getClass ("NSURL");
	__xamarin_class_map [38].handle = objc_getClass ("Foundation_NSDispatcher");
	__xamarin_class_map [39].handle = objc_getClass ("__MonoMac_NSActionDispatcher");
	__xamarin_class_map [40].handle = objc_getClass ("__MonoMac_NSSynchronizationContextDispatcher");
	__xamarin_class_map [41].handle = objc_getClass ("Foundation_NSAsyncDispatcher");
	__xamarin_class_map [42].handle = objc_getClass ("__MonoMac_NSAsyncSynchronizationContextDispatcher");
	__xamarin_class_map [43].handle = objc_getClass ("NSAutoreleasePool");
	__xamarin_class_map [44].handle = objc_getClass ("NSValue");
	__xamarin_class_map [45].handle = objc_getClass ("NSNumber");
	__xamarin_class_map [46].handle = objc_getClass ("NSException");
	__xamarin_class_map [47].handle = objc_getClass ("NSNotification");
	__xamarin_class_map [48].handle = objc_getClass ("__NSGestureRecognizerToken");
	__xamarin_class_map [49].handle = objc_getClass ("__NSGestureRecognizerParameterlessToken");
	__xamarin_class_map [50].handle = objc_getClass ("__NSGestureRecognizerParametrizedToken");
	__xamarin_class_map [51].handle = objc_getClass ("NSGestureRecognizer");
	__xamarin_class_map [52].handle = objc_getClass ("__NSClickGestureRecognizer");
	__xamarin_class_map [53].handle = objc_getClass ("NSClickGestureRecognizer");
	__xamarin_class_map [54].handle = objc_getClass ("__NSMagnificationGestureRecognizer");
	__xamarin_class_map [55].handle = objc_getClass ("NSMagnificationGestureRecognizer");
	__xamarin_class_map [56].handle = objc_getClass ("__NSPanGestureRecognizer");
	__xamarin_class_map [57].handle = objc_getClass ("NSPanGestureRecognizer");
	__xamarin_class_map [58].handle = objc_getClass ("__NSPressGestureRecognizer");
	__xamarin_class_map [59].handle = objc_getClass ("NSPressGestureRecognizer");
	__xamarin_class_map [60].handle = objc_getClass ("__NSRotationGestureRecognizer");
	__xamarin_class_map [61].handle = objc_getClass ("NSRotationGestureRecognizer");
	__xamarin_class_map [62].handle = objc_getClass ("NSDictionary");
	__xamarin_class_map [63].handle = objc_getClass ("NSMutableDictionary");
	__xamarin_class_map [64].handle = objc_getClass ("__NSObject_Disposer");
	__xamarin_class_map [65].handle = [AppDelegate class];
	__xamarin_class_map [66].handle = [ViewController class];
	xamarin_add_registration_map (&__xamarin_registration_map, false);
}


} /* extern "C" */
