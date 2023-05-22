

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var cgstTaxPercentage: Double

        public var sgstGstFee: String

        public var gstTag: String

        public var taxCollectedAtSource: Double

        public var igstGstFee: String

        public var brandCalculatedAmount: Double

        public var cgstGstFee: String

        public var valueOfGood: Double

        public var gstinCode: String?

        public var gstFee: Double

        public var igstTaxPercentage: Double

        public var isDefaultHsnCode: Bool?

        public var gstTaxPercentage: Double

        public var hsnCode: String

        public var sgstTaxPercentage: Double

        public var hsnCodeId: String

        public enum CodingKeys: String, CodingKey {
            case cgstTaxPercentage = "cgst_tax_percentage"

            case sgstGstFee = "sgst_gst_fee"

            case gstTag = "gst_tag"

            case taxCollectedAtSource = "tax_collected_at_source"

            case igstGstFee = "igst_gst_fee"

            case brandCalculatedAmount = "brand_calculated_amount"

            case cgstGstFee = "cgst_gst_fee"

            case valueOfGood = "value_of_good"

            case gstinCode = "gstin_code"

            case gstFee = "gst_fee"

            case igstTaxPercentage = "igst_tax_percentage"

            case isDefaultHsnCode = "is_default_hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case hsnCode = "hsn_code"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case hsnCodeId = "hsn_code_id"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.cgstTaxPercentage = cgstTaxPercentage

            self.sgstGstFee = sgstGstFee

            self.gstTag = gstTag

            self.taxCollectedAtSource = taxCollectedAtSource

            self.igstGstFee = igstGstFee

            self.brandCalculatedAmount = brandCalculatedAmount

            self.cgstGstFee = cgstGstFee

            self.valueOfGood = valueOfGood

            self.gstinCode = gstinCode

            self.gstFee = gstFee

            self.igstTaxPercentage = igstTaxPercentage

            self.isDefaultHsnCode = isDefaultHsnCode

            self.gstTaxPercentage = gstTaxPercentage

            self.hsnCode = hsnCode

            self.sgstTaxPercentage = sgstTaxPercentage

            self.hsnCodeId = hsnCodeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

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
        public var cgstTaxPercentage: Double

        public var sgstGstFee: String

        public var gstTag: String

        public var taxCollectedAtSource: Double

        public var igstGstFee: String

        public var brandCalculatedAmount: Double

        public var cgstGstFee: String

        public var valueOfGood: Double

        public var gstinCode: String?

        public var gstFee: Double

        public var igstTaxPercentage: Double

        public var isDefaultHsnCode: Bool?

        public var gstTaxPercentage: Double

        public var hsnCode: String

        public var sgstTaxPercentage: Double

        public var hsnCodeId: String

        public enum CodingKeys: String, CodingKey {
            case cgstTaxPercentage = "cgst_tax_percentage"

            case sgstGstFee = "sgst_gst_fee"

            case gstTag = "gst_tag"

            case taxCollectedAtSource = "tax_collected_at_source"

            case igstGstFee = "igst_gst_fee"

            case brandCalculatedAmount = "brand_calculated_amount"

            case cgstGstFee = "cgst_gst_fee"

            case valueOfGood = "value_of_good"

            case gstinCode = "gstin_code"

            case gstFee = "gst_fee"

            case igstTaxPercentage = "igst_tax_percentage"

            case isDefaultHsnCode = "is_default_hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case hsnCode = "hsn_code"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case hsnCodeId = "hsn_code_id"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.cgstTaxPercentage = cgstTaxPercentage

            self.sgstGstFee = sgstGstFee

            self.gstTag = gstTag

            self.taxCollectedAtSource = taxCollectedAtSource

            self.igstGstFee = igstGstFee

            self.brandCalculatedAmount = brandCalculatedAmount

            self.cgstGstFee = cgstGstFee

            self.valueOfGood = valueOfGood

            self.gstinCode = gstinCode

            self.gstFee = gstFee

            self.igstTaxPercentage = igstTaxPercentage

            self.isDefaultHsnCode = isDefaultHsnCode

            self.gstTaxPercentage = gstTaxPercentage

            self.hsnCode = hsnCode

            self.sgstTaxPercentage = sgstTaxPercentage

            self.hsnCodeId = hsnCodeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)
        }
    }
}
