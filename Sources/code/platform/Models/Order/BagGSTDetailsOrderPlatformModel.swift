

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var gstFee: Double

        public var valueOfGood: Double

        public var hsnCodeId: String

        public var brandCalculatedAmount: Double

        public var sgstTaxPercentage: Double

        public var sgstGstFee: String

        public var igstGstFee: String

        public var cgstGstFee: String

        public var gstinCode: String?

        public var gstTag: String

        public var cgstTaxPercentage: Double

        public var isDefaultHsnCode: Bool?

        public var gstTaxPercentage: Double

        public var igstTaxPercentage: Double

        public var hsnCode: String

        public var taxCollectedAtSource: Double

        public enum CodingKeys: String, CodingKey {
            case gstFee = "gst_fee"

            case valueOfGood = "value_of_good"

            case hsnCodeId = "hsn_code_id"

            case brandCalculatedAmount = "brand_calculated_amount"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case sgstGstFee = "sgst_gst_fee"

            case igstGstFee = "igst_gst_fee"

            case cgstGstFee = "cgst_gst_fee"

            case gstinCode = "gstin_code"

            case gstTag = "gst_tag"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case isDefaultHsnCode = "is_default_hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case igstTaxPercentage = "igst_tax_percentage"

            case hsnCode = "hsn_code"

            case taxCollectedAtSource = "tax_collected_at_source"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstFee = gstFee

            self.valueOfGood = valueOfGood

            self.hsnCodeId = hsnCodeId

            self.brandCalculatedAmount = brandCalculatedAmount

            self.sgstTaxPercentage = sgstTaxPercentage

            self.sgstGstFee = sgstGstFee

            self.igstGstFee = igstGstFee

            self.cgstGstFee = cgstGstFee

            self.gstinCode = gstinCode

            self.gstTag = gstTag

            self.cgstTaxPercentage = cgstTaxPercentage

            self.isDefaultHsnCode = isDefaultHsnCode

            self.gstTaxPercentage = gstTaxPercentage

            self.igstTaxPercentage = igstTaxPercentage

            self.hsnCode = hsnCode

            self.taxCollectedAtSource = taxCollectedAtSource
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTag = try container.decode(String.self, forKey: .gstTag)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var gstFee: Double

        public var valueOfGood: Double

        public var hsnCodeId: String

        public var brandCalculatedAmount: Double

        public var sgstTaxPercentage: Double

        public var sgstGstFee: String

        public var igstGstFee: String

        public var cgstGstFee: String

        public var gstinCode: String?

        public var gstTag: String

        public var cgstTaxPercentage: Double

        public var isDefaultHsnCode: Bool?

        public var gstTaxPercentage: Double

        public var igstTaxPercentage: Double

        public var hsnCode: String

        public var taxCollectedAtSource: Double

        public enum CodingKeys: String, CodingKey {
            case gstFee = "gst_fee"

            case valueOfGood = "value_of_good"

            case hsnCodeId = "hsn_code_id"

            case brandCalculatedAmount = "brand_calculated_amount"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case sgstGstFee = "sgst_gst_fee"

            case igstGstFee = "igst_gst_fee"

            case cgstGstFee = "cgst_gst_fee"

            case gstinCode = "gstin_code"

            case gstTag = "gst_tag"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case isDefaultHsnCode = "is_default_hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case igstTaxPercentage = "igst_tax_percentage"

            case hsnCode = "hsn_code"

            case taxCollectedAtSource = "tax_collected_at_source"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstFee = gstFee

            self.valueOfGood = valueOfGood

            self.hsnCodeId = hsnCodeId

            self.brandCalculatedAmount = brandCalculatedAmount

            self.sgstTaxPercentage = sgstTaxPercentage

            self.sgstGstFee = sgstGstFee

            self.igstGstFee = igstGstFee

            self.cgstGstFee = cgstGstFee

            self.gstinCode = gstinCode

            self.gstTag = gstTag

            self.cgstTaxPercentage = cgstTaxPercentage

            self.isDefaultHsnCode = isDefaultHsnCode

            self.gstTaxPercentage = gstTaxPercentage

            self.igstTaxPercentage = igstTaxPercentage

            self.hsnCode = hsnCode

            self.taxCollectedAtSource = taxCollectedAtSource
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTag = try container.decode(String.self, forKey: .gstTag)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)
        }
    }
}
