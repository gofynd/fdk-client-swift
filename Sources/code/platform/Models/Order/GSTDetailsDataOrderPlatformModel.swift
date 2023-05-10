

import Foundation

public extension PlatformClient.Order {
    /*
         Model: GSTDetailsData
         Used By: Order
     */

    class GSTDetailsData: Codable {
        public var brandCalculatedAmount: Double

        public var taxCollectedAtSource: Double

        public var gstinCode: String

        public var valueOfGood: Double

        public var gstFee: Double

        public enum CodingKeys: String, CodingKey {
            case brandCalculatedAmount = "brand_calculated_amount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstinCode = "gstin_code"

            case valueOfGood = "value_of_good"

            case gstFee = "gst_fee"
        }

        public init(brandCalculatedAmount: Double, gstinCode: String, gstFee: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.brandCalculatedAmount = brandCalculatedAmount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstinCode = gstinCode

            self.valueOfGood = valueOfGood

            self.gstFee = gstFee
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            gstinCode = try container.decode(String.self, forKey: .gstinCode)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstFee = try container.decode(Double.self, forKey: .gstFee)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: GSTDetailsData
         Used By: Order
     */

    class GSTDetailsData: Codable {
        public var brandCalculatedAmount: Double

        public var taxCollectedAtSource: Double

        public var gstinCode: String

        public var valueOfGood: Double

        public var gstFee: Double

        public enum CodingKeys: String, CodingKey {
            case brandCalculatedAmount = "brand_calculated_amount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstinCode = "gstin_code"

            case valueOfGood = "value_of_good"

            case gstFee = "gst_fee"
        }

        public init(brandCalculatedAmount: Double, gstinCode: String, gstFee: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.brandCalculatedAmount = brandCalculatedAmount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstinCode = gstinCode

            self.valueOfGood = valueOfGood

            self.gstFee = gstFee
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            gstinCode = try container.decode(String.self, forKey: .gstinCode)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstFee = try container.decode(Double.self, forKey: .gstFee)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)
        }
    }
}
