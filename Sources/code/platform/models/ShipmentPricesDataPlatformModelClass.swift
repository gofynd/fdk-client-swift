

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentPricesData
         Used By: Orders
     */

    class ShipmentPricesData: Codable {
        public var gstFee: Int?

        public var brandCalculatedAmount: Int?

        public var valueOfGood: Int?

        public var taxCollectedAtSource: Int?

        public var gstinCode: String?

        public enum CodingKeys: String, CodingKey {
            case gstFee = "gst_fee"

            case brandCalculatedAmount = "brand_calculated_amount"

            case valueOfGood = "value_of_good"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstinCode = "gstin_code"
        }

        public init(brandCalculatedAmount: Int? = nil, gstinCode: String? = nil, gstFee: Int? = nil, taxCollectedAtSource: Int? = nil, valueOfGood: Int? = nil) {
            self.gstFee = gstFee

            self.brandCalculatedAmount = brandCalculatedAmount

            self.valueOfGood = valueOfGood

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstinCode = gstinCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                gstFee = try container.decode(Int.self, forKey: .gstFee)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstinCode, forKey: .gstinCode)
        }
    }
}
