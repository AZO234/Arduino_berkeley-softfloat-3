#include <stdint.h>
#include <stdbool.h>

extern "C" {
#include <softfloat.h>
}

void setup() {
  float64_t f64Val;

  Serial.begin(9600);

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
}

void loop() {
}

