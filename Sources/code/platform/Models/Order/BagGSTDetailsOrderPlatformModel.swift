

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var isDefaultHsnCode: Bool?

        public var cgstGstFee: String

        public var hsnCode: String

        public var gstTaxPercentage: Double

        public var valueOfGood: Double

        public var sgstTaxPercentage: Double

        public var taxCollectedAtSource: Double

        public var cgstTaxPercentage: Double

        public var igstTaxPercentage: Double

        public var igstGstFee: String

        public var sgstGstFee: String

        public var brandCalculatedAmount: Double

        public var gstFee: Double

        public var gstTag: String

        public var gstinCode: String?

        public var hsnCodeId: String

        public enum CodingKeys: String, CodingKey {
            case isDefaultHsnCode = "is_default_hsn_code"

            case cgstGstFee = "cgst_gst_fee"

            case hsnCode = "hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case valueOfGood = "value_of_good"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case taxCollectedAtSource = "tax_collected_at_source"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case igstTaxPercentage = "igst_tax_percentage"

            case igstGstFee = "igst_gst_fee"

            case sgstGstFee = "sgst_gst_fee"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstFee = "gst_fee"

            case gstTag = "gst_tag"

            case gstinCode = "gstin_code"

            case hsnCodeId = "hsn_code_id"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.isDefaultHsnCode = isDefaultHsnCode

            self.cgstGstFee = cgstGstFee

            self.hsnCode = hsnCode

            self.gstTaxPercentage = gstTaxPercentage

            self.valueOfGood = valueOfGood

            self.sgstTaxPercentage = sgstTaxPercentage

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cgstTaxPercentage = cgstTaxPercentage

            self.igstTaxPercentage = igstTaxPercentage

            self.igstGstFee = igstGstFee

            self.sgstGstFee = sgstGstFee

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstFee = gstFee

            self.gstTag = gstTag

            self.gstinCode = gstinCode

            self.hsnCodeId = hsnCodeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            gstTag = try container.decode(String.self, forKey: .gstTag)

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

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

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
        public var isDefaultHsnCode: Bool?

        public var cgstGstFee: String

        public var hsnCode: String

        public var gstTaxPercentage: Double

        public var valueOfGood: Double

        public var sgstTaxPercentage: Double

        public var taxCollectedAtSource: Double

        public var cgstTaxPercentage: Double

        public var igstTaxPercentage: Double

        public var igstGstFee: String

        public var sgstGstFee: String

        public var brandCalculatedAmount: Double

        public var gstFee: Double

        public var gstTag: String

        public var gstinCode: String?

        public var hsnCodeId: String

        public enum CodingKeys: String, CodingKey {
            case isDefaultHsnCode = "is_default_hsn_code"

            case cgstGstFee = "cgst_gst_fee"

            case hsnCode = "hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case valueOfGood = "value_of_good"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case taxCollectedAtSource = "tax_collected_at_source"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case igstTaxPercentage = "igst_tax_percentage"

            case igstGstFee = "igst_gst_fee"

            case sgstGstFee = "sgst_gst_fee"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstFee = "gst_fee"

            case gstTag = "gst_tag"

            case gstinCode = "gstin_code"

            case hsnCodeId = "hsn_code_id"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.isDefaultHsnCode = isDefaultHsnCode

            self.cgstGstFee = cgstGstFee

            self.hsnCode = hsnCode

            self.gstTaxPercentage = gstTaxPercentage

            self.valueOfGood = valueOfGood

            self.sgstTaxPercentage = sgstTaxPercentage

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cgstTaxPercentage = cgstTaxPercentage

            self.igstTaxPercentage = igstTaxPercentage

            self.igstGstFee = igstGstFee

            self.sgstGstFee = sgstGstFee

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstFee = gstFee

            self.gstTag = gstTag

            self.gstinCode = gstinCode

            self.hsnCodeId = hsnCodeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            gstTag = try container.decode(String.self, forKey: .gstTag)

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

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)
        }
    }
}
