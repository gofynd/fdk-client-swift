

import Foundation
public extension ApplicationClient {
    /*
         Model: CartFeature
         Used By: Configuration
     */
    class CartFeature: Codable {
        public var gstInput: Bool?

        public var staffSelection: Bool?

        public var placingForCustomer: Bool?

        public var googleMap: Bool?

        public var revenueEngineCoupon: Bool?

        public enum CodingKeys: String, CodingKey {
            case gstInput = "gst_input"

            case staffSelection = "staff_selection"

            case placingForCustomer = "placing_for_customer"

            case googleMap = "google_map"

            case revenueEngineCoupon = "revenue_engine_coupon"
        }

        public init(googleMap: Bool? = nil, gstInput: Bool? = nil, placingForCustomer: Bool? = nil, revenueEngineCoupon: Bool? = nil, staffSelection: Bool? = nil) {
            self.gstInput = gstInput

            self.staffSelection = staffSelection

            self.placingForCustomer = placingForCustomer

            self.googleMap = googleMap

            self.revenueEngineCoupon = revenueEngineCoupon
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                gstInput = try container.decode(Bool.self, forKey: .gstInput)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                staffSelection = try container.decode(Bool.self, forKey: .staffSelection)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                placingForCustomer = try container.decode(Bool.self, forKey: .placingForCustomer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                googleMap = try container.decode(Bool.self, forKey: .googleMap)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                revenueEngineCoupon = try container.decode(Bool.self, forKey: .revenueEngineCoupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstInput, forKey: .gstInput)

            try? container.encodeIfPresent(staffSelection, forKey: .staffSelection)

            try? container.encodeIfPresent(placingForCustomer, forKey: .placingForCustomer)

            try? container.encodeIfPresent(googleMap, forKey: .googleMap)

            try? container.encodeIfPresent(revenueEngineCoupon, forKey: .revenueEngineCoupon)
        }
    }
}
