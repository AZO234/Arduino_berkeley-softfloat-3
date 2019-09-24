#include <stdint.h>
#include <stdbool.h>

extern "C" {
#include <softfloat.h>
}

void setup() {
  float16_t f16Val;
  float32_t f32Val;
  float64_t f64Val;
  extFloat80_t f80Val, f80Val2, f80Val3;
  float128_t f128Val, f128Val2, f128Val3;

  Serial.begin(9600);

  Serial.println("=== float16_t ===");
  f16Val = ui64_to_f16(125);
  f16Val = f16_div(f16Val, ui64_to_f16(10));
  Serial.println(f16_to_ui32(f16Val, softfloat_round_near_even, false));
  Serial.println(f16_to_ui32(f16Val, softfloat_round_minMag, false));
  Serial.println(f16_to_ui32(f16Val, softfloat_round_min, false));
  Serial.println(f16_to_ui32(f16Val, softfloat_round_max, false));
  Serial.println(f16_to_ui32(f16Val, softfloat_round_near_maxMag, false));
  Serial.println(f16_to_ui32(f16Val, softfloat_round_odd, false));
  f16Val = f16_div(f16Val, ui64_to_f16(10));
  Serial.println(f16_to_ui32(f16Val, softfloat_round_near_even, false));
  Serial.println(f16_to_ui32(f16Val, softfloat_round_minMag, false));
  Serial.println(f16_to_ui32(f16Val, softfloat_round_min, false));
  Serial.println(f16_to_ui32(f16Val, softfloat_round_max, false));
  Serial.println(f16_to_ui32(f16Val, softfloat_round_near_maxMag, false));
  Serial.println(f16_to_ui32(f16Val, softfloat_round_odd, false));

  Serial.println("=== float32_t ===");
  f32Val = ui64_to_f32(125);
  f32Val = f32_div(f32Val, ui64_to_f32(10));
  Serial.println(f32_to_ui32(f32Val, softfloat_round_near_even, false));
  Serial.println(f32_to_ui32(f32Val, softfloat_round_minMag, false));
  Serial.println(f32_to_ui32(f32Val, softfloat_round_min, false));
  Serial.println(f32_to_ui32(f32Val, softfloat_round_max, false));
  Serial.println(f32_to_ui32(f32Val, softfloat_round_near_maxMag, false));
  Serial.println(f32_to_ui32(f32Val, softfloat_round_odd, false));
  f32Val = f32_div(f32Val, ui64_to_f32(10));
  Serial.println(f32_to_ui32(f32Val, softfloat_round_near_even, false));
  Serial.println(f32_to_ui32(f32Val, softfloat_round_minMag, false));
  Serial.println(f32_to_ui32(f32Val, softfloat_round_min, false));
  Serial.println(f32_to_ui32(f32Val, softfloat_round_max, false));
  Serial.println(f32_to_ui32(f32Val, softfloat_round_near_maxMag, false));
  Serial.println(f32_to_ui32(f32Val, softfloat_round_odd, false));

  Serial.println("=== float64_t ===");
  f64Val = ui64_to_f64(125);
  f64Val = f64_div(f64Val, ui64_to_f64(10));
  Serial.println(f64_to_ui32(f64Val, softfloat_round_near_even, false));
  Serial.println(f64_to_ui32(f64Val, softfloat_round_minMag, false));
  Serial.println(f64_to_ui32(f64Val, softfloat_round_min, false));
  Serial.println(f64_to_ui32(f64Val, softfloat_round_max, false));
  Serial.println(f64_to_ui32(f64Val, softfloat_round_near_maxMag, false));
  Serial.println(f64_to_ui32(f64Val, softfloat_round_odd, false));
  f64Val = f64_div(f64Val, ui64_to_f64(10));
  Serial.println(f64_to_ui32(f64Val, softfloat_round_near_even, false));
  Serial.println(f64_to_ui32(f64Val, softfloat_round_minMag, false));
  Serial.println(f64_to_ui32(f64Val, softfloat_round_min, false));
  Serial.println(f64_to_ui32(f64Val, softfloat_round_max, false));
  Serial.println(f64_to_ui32(f64Val, softfloat_round_near_maxMag, false));
  Serial.println(f64_to_ui32(f64Val, softfloat_round_odd, false));

  Serial.println("=== extFloat80_t ===");
  ui64_to_extF80M(125, &f80Val2);
  ui64_to_extF80M(10, &f80Val3);
  extF80M_div(&f80Val2, &f80Val3, &f80Val);
  Serial.println(extF80M_to_ui32(&f80Val, softfloat_round_near_even, false));
  Serial.println(extF80M_to_ui32(&f80Val, softfloat_round_minMag, false));
  Serial.println(extF80M_to_ui32(&f80Val, softfloat_round_min, false));
  Serial.println(extF80M_to_ui32(&f80Val, softfloat_round_max, false));
  Serial.println(extF80M_to_ui32(&f80Val, softfloat_round_near_maxMag, false));
  Serial.println(extF80M_to_ui32(&f80Val, softfloat_round_odd, false));
  memcpy(&f80Val2, &f80Val, sizeof(extFloat80_t));
  extF80M_div(&f80Val2, &f80Val3, &f80Val);
  Serial.println(extF80M_to_ui32(&f80Val, softfloat_round_near_even, false));
  Serial.println(extF80M_to_ui32(&f80Val, softfloat_round_minMag, false));
  Serial.println(extF80M_to_ui32(&f80Val, softfloat_round_min, false));
  Serial.println(extF80M_to_ui32(&f80Val, softfloat_round_max, false));
  Serial.println(extF80M_to_ui32(&f80Val, softfloat_round_near_maxMag, false));
  Serial.println(extF80M_to_ui32(&f80Val, softfloat_round_odd, false));

  Serial.println("=== float128_t ===");
  ui64_to_f128M(125, &f128Val2);
  ui64_to_f128M(10, &f128Val3);
  f128M_div(&f128Val2, &f128Val3, &f128Val);
  Serial.println(f128M_to_ui32(&f128Val, softfloat_round_near_even, false));
  Serial.println(f128M_to_ui32(&f128Val, softfloat_round_minMag, false));
  Serial.println(f128M_to_ui32(&f128Val, softfloat_round_min, false));
  Serial.println(f128M_to_ui32(&f128Val, softfloat_round_max, false));
  Serial.println(f128M_to_ui32(&f128Val, softfloat_round_near_maxMag, false));
  Serial.println(f128M_to_ui32(&f128Val, softfloat_round_odd, false));
  memcpy(&f128Val2, &f128Val, sizeof(float128_t));
  f128M_div(&f128Val2, &f128Val3, &f128Val);
  Serial.println(f128M_to_ui32(&f128Val, softfloat_round_near_even, false));
  Serial.println(f128M_to_ui32(&f128Val, softfloat_round_minMag, false));
  Serial.println(f128M_to_ui32(&f128Val, softfloat_round_min, false));
  Serial.println(f128M_to_ui32(&f128Val, softfloat_round_max, false));
  Serial.println(f128M_to_ui32(&f128Val, softfloat_round_near_maxMag, false));
  Serial.println(f128M_to_ui32(&f128Val, softfloat_round_odd, false));
}

void loop() {
}

