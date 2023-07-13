

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var hsnCode: String

        public var igstGstFee: String

        public var cgstGstFee: String

        public var valueOfGood: Double

        public var sgstTaxPercentage: Double

        public var cgstTaxPercentage: Double

        public var brandCalculatedAmount: Double

        public var gstTag: String

        public var gstFee: Double

        public var igstTaxPercentage: Double

        public var taxCollectedAtSource: Double

        public var sgstGstFee: String

        public var gstTaxPercentage: Double

        public var isDefaultHsnCode: Bool?

        public var gstinCode: String?

        public var hsnCodeId: String

        public enum CodingKeys: String, CodingKey {
            case hsnCode = "hsn_code"

            case igstGstFee = "igst_gst_fee"

            case cgstGstFee = "cgst_gst_fee"

            case valueOfGood = "value_of_good"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstTag = "gst_tag"

            case gstFee = "gst_fee"

            case igstTaxPercentage = "igst_tax_percentage"

            case taxCollectedAtSource = "tax_collected_at_source"

            case sgstGstFee = "sgst_gst_fee"

            case gstTaxPercentage = "gst_tax_percentage"

            case isDefaultHsnCode = "is_default_hsn_code"

            case gstinCode = "gstin_code"

            case hsnCodeId = "hsn_code_id"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.hsnCode = hsnCode

            self.igstGstFee = igstGstFee

            self.cgstGstFee = cgstGstFee

            self.valueOfGood = valueOfGood

            self.sgstTaxPercentage = sgstTaxPercentage

            self.cgstTaxPercentage = cgstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstTag = gstTag

            self.gstFee = gstFee

            self.igstTaxPercentage = igstTaxPercentage

            self.taxCollectedAtSource = taxCollectedAtSource

            self.sgstGstFee = sgstGstFee

            self.gstTaxPercentage = gstTaxPercentage

            self.isDefaultHsnCode = isDefaultHsnCode

            self.gstinCode = gstinCode

            self.hsnCodeId = hsnCodeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

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

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var hsnCode: String

        public var igstGstFee: String

        public var cgstGstFee: String

        public var valueOfGood: Double

        public var sgstTaxPercentage: Double

        public var cgstTaxPercentage: Double

        public var brandCalculatedAmount: Double

        public var gstTag: String

        public var gstFee: Double

        public var igstTaxPercentage: Double

        public var taxCollectedAtSource: Double

        public var sgstGstFee: String

        public var gstTaxPercentage: Double

        public var isDefaultHsnCode: Bool?

        public var gstinCode: String?

        public var hsnCodeId: String

        public enum CodingKeys: String, CodingKey {
            case hsnCode = "hsn_code"

            case igstGstFee = "igst_gst_fee"

            case cgstGstFee = "cgst_gst_fee"

            case valueOfGood = "value_of_good"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstTag = "gst_tag"

            case gstFee = "gst_fee"

            case igstTaxPercentage = "igst_tax_percentage"

            case taxCollectedAtSource = "tax_collected_at_source"

            case sgstGstFee = "sgst_gst_fee"

            case gstTaxPercentage = "gst_tax_percentage"

            case isDefaultHsnCode = "is_default_hsn_code"

            case gstinCode = "gstin_code"

            case hsnCodeId = "hsn_code_id"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.hsnCode = hsnCode

            self.igstGstFee = igstGstFee

            self.cgstGstFee = cgstGstFee

            self.valueOfGood = valueOfGood

            self.sgstTaxPercentage = sgstTaxPercentage

            self.cgstTaxPercentage = cgstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstTag = gstTag

            self.gstFee = gstFee

            self.igstTaxPercentage = igstTaxPercentage

            self.taxCollectedAtSource = taxCollectedAtSource

            self.sgstGstFee = sgstGstFee

            self.gstTaxPercentage = gstTaxPercentage

            self.isDefaultHsnCode = isDefaultHsnCode

            self.gstinCode = gstinCode

            self.hsnCodeId = hsnCodeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

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

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)
        }
    }
}
