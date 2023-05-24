

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var brandCalculatedAmount: Double

        public var isDefaultHsnCode: Bool?

        public var cgstGstFee: String

        public var sgstGstFee: String

        public var gstTaxPercentage: Double

        public var gstTag: String

        public var hsnCodeId: String

        public var valueOfGood: Double

        public var igstTaxPercentage: Double

        public var sgstTaxPercentage: Double

        public var hsnCode: String

        public var cgstTaxPercentage: Double

        public var igstGstFee: String

        public var gstinCode: String?

        public var taxCollectedAtSource: Double

        public var gstFee: Double

        public enum CodingKeys: String, CodingKey {
            case brandCalculatedAmount = "brand_calculated_amount"

            case isDefaultHsnCode = "is_default_hsn_code"

            case cgstGstFee = "cgst_gst_fee"

            case sgstGstFee = "sgst_gst_fee"

            case gstTaxPercentage = "gst_tax_percentage"

            case gstTag = "gst_tag"

            case hsnCodeId = "hsn_code_id"

            case valueOfGood = "value_of_good"

            case igstTaxPercentage = "igst_tax_percentage"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case hsnCode = "hsn_code"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case igstGstFee = "igst_gst_fee"

            case gstinCode = "gstin_code"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstFee = "gst_fee"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.brandCalculatedAmount = brandCalculatedAmount

            self.isDefaultHsnCode = isDefaultHsnCode

            self.cgstGstFee = cgstGstFee

            self.sgstGstFee = sgstGstFee

            self.gstTaxPercentage = gstTaxPercentage

            self.gstTag = gstTag

            self.hsnCodeId = hsnCodeId

            self.valueOfGood = valueOfGood

            self.igstTaxPercentage = igstTaxPercentage

            self.sgstTaxPercentage = sgstTaxPercentage

            self.hsnCode = hsnCode

            self.cgstTaxPercentage = cgstTaxPercentage

            self.igstGstFee = igstGstFee

            self.gstinCode = gstinCode

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstFee = gstFee
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            gstFee = try container.decode(Double.self, forKey: .gstFee)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var brandCalculatedAmount: Double

        public var isDefaultHsnCode: Bool?

        public var cgstGstFee: String

        public var sgstGstFee: String

        public var gstTaxPercentage: Double

        public var gstTag: String

        public var hsnCodeId: String

        public var valueOfGood: Double

        public var igstTaxPercentage: Double

        public var sgstTaxPercentage: Double

        public var hsnCode: String

        public var cgstTaxPercentage: Double

        public var igstGstFee: String

        public var gstinCode: String?

        public var taxCollectedAtSource: Double

        public var gstFee: Double

        public enum CodingKeys: String, CodingKey {
            case brandCalculatedAmount = "brand_calculated_amount"

            case isDefaultHsnCode = "is_default_hsn_code"

            case cgstGstFee = "cgst_gst_fee"

            case sgstGstFee = "sgst_gst_fee"

            case gstTaxPercentage = "gst_tax_percentage"

            case gstTag = "gst_tag"

            case hsnCodeId = "hsn_code_id"

            case valueOfGood = "value_of_good"

            case igstTaxPercentage = "igst_tax_percentage"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case hsnCode = "hsn_code"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case igstGstFee = "igst_gst_fee"

            case gstinCode = "gstin_code"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstFee = "gst_fee"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.brandCalculatedAmount = brandCalculatedAmount

            self.isDefaultHsnCode = isDefaultHsnCode

            self.cgstGstFee = cgstGstFee

            self.sgstGstFee = sgstGstFee

            self.gstTaxPercentage = gstTaxPercentage

            self.gstTag = gstTag

            self.hsnCodeId = hsnCodeId

            self.valueOfGood = valueOfGood

            self.igstTaxPercentage = igstTaxPercentage

            self.sgstTaxPercentage = sgstTaxPercentage

            self.hsnCode = hsnCode

            self.cgstTaxPercentage = cgstTaxPercentage

            self.igstGstFee = igstGstFee

            self.gstinCode = gstinCode

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstFee = gstFee
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            gstFee = try container.decode(Double.self, forKey: .gstFee)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)
        }
    }
}
