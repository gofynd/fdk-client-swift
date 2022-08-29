

import Foundation
public extension PlatformClient {
    /*
         Model: GST
         Used By: Orders
     */

    class GST: Codable {
        public var valueOfGood: Double

        public var gstFee: Double

        public var gstinCode: String

        public var taxCollectedAtSource: Double

        public var brandCalculatedAmount: Double

        public enum CodingKeys: String, CodingKey {
            case valueOfGood = "value_of_good"

            case gstFee = "gst_fee"

            case gstinCode = "gstin_code"

            case taxCollectedAtSource = "tax_collected_at_source"

            case brandCalculatedAmount = "brand_calculated_amount"
        }

        public init(brandCalculatedAmount: Double, gstinCode: String, gstFee: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.valueOfGood = valueOfGood

            self.gstFee = gstFee

            self.gstinCode = gstinCode

            self.taxCollectedAtSource = taxCollectedAtSource

            self.brandCalculatedAmount = brandCalculatedAmount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            gstinCode = try container.decode(String.self, forKey: .gstinCode)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)
        }
    }
}
