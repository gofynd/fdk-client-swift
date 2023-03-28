

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var gstTaxPercentage: Double

        public var gstFee: Double

        public var sgstTaxPercentage: Double

        public var gstTag: String

        public var taxCollectedAtSource: Double

        public var igstGstFee: String

        public var hsnCode: String

        public var hsnCodeId: String

        public var cgstGstFee: String

        public var isDefaultHsnCode: Bool?

        public var igstTaxPercentage: Double

        public var valueOfGood: Double

        public var brandCalculatedAmount: Double

        public var gstinCode: String?

        public var cgstTaxPercentage: Double

        public var sgstGstFee: String

        public enum CodingKeys: String, CodingKey {
            case gstTaxPercentage = "gst_tax_percentage"

            case gstFee = "gst_fee"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case gstTag = "gst_tag"

            case taxCollectedAtSource = "tax_collected_at_source"

            case igstGstFee = "igst_gst_fee"

            case hsnCode = "hsn_code"

            case hsnCodeId = "hsn_code_id"

            case cgstGstFee = "cgst_gst_fee"

            case isDefaultHsnCode = "is_default_hsn_code"

            case igstTaxPercentage = "igst_tax_percentage"

            case valueOfGood = "value_of_good"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstinCode = "gstin_code"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case sgstGstFee = "sgst_gst_fee"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstTaxPercentage = gstTaxPercentage

            self.gstFee = gstFee

            self.sgstTaxPercentage = sgstTaxPercentage

            self.gstTag = gstTag

            self.taxCollectedAtSource = taxCollectedAtSource

            self.igstGstFee = igstGstFee

            self.hsnCode = hsnCode

            self.hsnCodeId = hsnCodeId

            self.cgstGstFee = cgstGstFee

            self.isDefaultHsnCode = isDefaultHsnCode

            self.igstTaxPercentage = igstTaxPercentage

            self.valueOfGood = valueOfGood

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstinCode = gstinCode

            self.cgstTaxPercentage = cgstTaxPercentage

            self.sgstGstFee = sgstGstFee
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var gstTaxPercentage: Double

        public var gstFee: Double

        public var sgstTaxPercentage: Double

        public var gstTag: String

        public var taxCollectedAtSource: Double

        public var igstGstFee: String

        public var hsnCode: String

        public var hsnCodeId: String

        public var cgstGstFee: String

        public var isDefaultHsnCode: Bool?

        public var igstTaxPercentage: Double

        public var valueOfGood: Double

        public var brandCalculatedAmount: Double

        public var gstinCode: String?

        public var cgstTaxPercentage: Double

        public var sgstGstFee: String

        public enum CodingKeys: String, CodingKey {
            case gstTaxPercentage = "gst_tax_percentage"

            case gstFee = "gst_fee"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case gstTag = "gst_tag"

            case taxCollectedAtSource = "tax_collected_at_source"

            case igstGstFee = "igst_gst_fee"

            case hsnCode = "hsn_code"

            case hsnCodeId = "hsn_code_id"

            case cgstGstFee = "cgst_gst_fee"

            case isDefaultHsnCode = "is_default_hsn_code"

            case igstTaxPercentage = "igst_tax_percentage"

            case valueOfGood = "value_of_good"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstinCode = "gstin_code"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case sgstGstFee = "sgst_gst_fee"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstTaxPercentage = gstTaxPercentage

            self.gstFee = gstFee

            self.sgstTaxPercentage = sgstTaxPercentage

            self.gstTag = gstTag

            self.taxCollectedAtSource = taxCollectedAtSource

            self.igstGstFee = igstGstFee

            self.hsnCode = hsnCode

            self.hsnCodeId = hsnCodeId

            self.cgstGstFee = cgstGstFee

            self.isDefaultHsnCode = isDefaultHsnCode

            self.igstTaxPercentage = igstTaxPercentage

            self.valueOfGood = valueOfGood

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstinCode = gstinCode

            self.cgstTaxPercentage = cgstTaxPercentage

            self.sgstGstFee = sgstGstFee
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)
        }
    }
}
