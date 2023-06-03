

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var gstinCode: String?

        public var cgstTaxPercentage: Double

        public var brandCalculatedAmount: Double

        public var igstTaxPercentage: Double

        public var gstFee: Double

        public var hsnCode: String

        public var valueOfGood: Double

        public var sgstTaxPercentage: Double

        public var gstTaxPercentage: Double

        public var isDefaultHsnCode: Bool?

        public var igstGstFee: String

        public var sgstGstFee: String

        public var gstTag: String

        public var taxCollectedAtSource: Double

        public var hsnCodeId: String

        public var cgstGstFee: String

        public enum CodingKeys: String, CodingKey {
            case gstinCode = "gstin_code"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case igstTaxPercentage = "igst_tax_percentage"

            case gstFee = "gst_fee"

            case hsnCode = "hsn_code"

            case valueOfGood = "value_of_good"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case gstTaxPercentage = "gst_tax_percentage"

            case isDefaultHsnCode = "is_default_hsn_code"

            case igstGstFee = "igst_gst_fee"

            case sgstGstFee = "sgst_gst_fee"

            case gstTag = "gst_tag"

            case taxCollectedAtSource = "tax_collected_at_source"

            case hsnCodeId = "hsn_code_id"

            case cgstGstFee = "cgst_gst_fee"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstinCode = gstinCode

            self.cgstTaxPercentage = cgstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.igstTaxPercentage = igstTaxPercentage

            self.gstFee = gstFee

            self.hsnCode = hsnCode

            self.valueOfGood = valueOfGood

            self.sgstTaxPercentage = sgstTaxPercentage

            self.gstTaxPercentage = gstTaxPercentage

            self.isDefaultHsnCode = isDefaultHsnCode

            self.igstGstFee = igstGstFee

            self.sgstGstFee = sgstGstFee

            self.gstTag = gstTag

            self.taxCollectedAtSource = taxCollectedAtSource

            self.hsnCodeId = hsnCodeId

            self.cgstGstFee = cgstGstFee
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var gstinCode: String?

        public var cgstTaxPercentage: Double

        public var brandCalculatedAmount: Double

        public var igstTaxPercentage: Double

        public var gstFee: Double

        public var hsnCode: String

        public var valueOfGood: Double

        public var sgstTaxPercentage: Double

        public var gstTaxPercentage: Double

        public var isDefaultHsnCode: Bool?

        public var igstGstFee: String

        public var sgstGstFee: String

        public var gstTag: String

        public var taxCollectedAtSource: Double

        public var hsnCodeId: String

        public var cgstGstFee: String

        public enum CodingKeys: String, CodingKey {
            case gstinCode = "gstin_code"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case igstTaxPercentage = "igst_tax_percentage"

            case gstFee = "gst_fee"

            case hsnCode = "hsn_code"

            case valueOfGood = "value_of_good"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case gstTaxPercentage = "gst_tax_percentage"

            case isDefaultHsnCode = "is_default_hsn_code"

            case igstGstFee = "igst_gst_fee"

            case sgstGstFee = "sgst_gst_fee"

            case gstTag = "gst_tag"

            case taxCollectedAtSource = "tax_collected_at_source"

            case hsnCodeId = "hsn_code_id"

            case cgstGstFee = "cgst_gst_fee"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstinCode = gstinCode

            self.cgstTaxPercentage = cgstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.igstTaxPercentage = igstTaxPercentage

            self.gstFee = gstFee

            self.hsnCode = hsnCode

            self.valueOfGood = valueOfGood

            self.sgstTaxPercentage = sgstTaxPercentage

            self.gstTaxPercentage = gstTaxPercentage

            self.isDefaultHsnCode = isDefaultHsnCode

            self.igstGstFee = igstGstFee

            self.sgstGstFee = sgstGstFee

            self.gstTag = gstTag

            self.taxCollectedAtSource = taxCollectedAtSource

            self.hsnCodeId = hsnCodeId

            self.cgstGstFee = cgstGstFee
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)
        }
    }
}
