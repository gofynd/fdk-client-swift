

import Foundation
public extension PlatformClient {
    /*
         Model: GST
         Used By: Orders
     */

    class GST: Codable {
        public var gstFee: Double

        public var brandCalculatedAmount: Double

        public var gstinCode: String

        public var taxCollectedAtSource: Double

        public var valueOfGood: Double

        public enum CodingKeys: String, CodingKey {
            case gstFee = "gst_fee"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstinCode = "gstin_code"

            case taxCollectedAtSource = "tax_collected_at_source"

            case valueOfGood = "value_of_good"
        }

        public init(brandCalculatedAmount: Double, gstinCode: String, gstFee: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstFee = gstFee

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstinCode = gstinCode

            self.taxCollectedAtSource = taxCollectedAtSource

            self.valueOfGood = valueOfGood
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            gstinCode = try container.decode(String.self, forKey: .gstinCode)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
        }
    }
}
