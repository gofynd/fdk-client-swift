

import Foundation
public extension PlatformClient {
    /*
         Model: GSTDetailsData
         Used By: Order
     */

    class GSTDetailsData: Codable {
        public var valueOfGood: Double

        public var gstinCode: String

        public var brandCalculatedAmount: Double

        public var taxCollectedAtSource: Double

        public var gstFee: Double

        public enum CodingKeys: String, CodingKey {
            case valueOfGood = "value_of_good"

            case gstinCode = "gstin_code"

            case brandCalculatedAmount = "brand_calculated_amount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstFee = "gst_fee"
        }

        public init(brandCalculatedAmount: Double, gstinCode: String, gstFee: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.valueOfGood = valueOfGood

            self.gstinCode = gstinCode

            self.brandCalculatedAmount = brandCalculatedAmount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstFee = gstFee
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstinCode = try container.decode(String.self, forKey: .gstinCode)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            gstFee = try container.decode(Double.self, forKey: .gstFee)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)
        }
    }
}
