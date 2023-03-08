

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var gstTag: String

        public var taxCollectedAtSource: Double

        public var gstinCode: String?

        public var gstFee: Double

        public var isDefaultHsnCode: Bool?

        public var brandCalculatedAmount: Double

        public var cgstGstFee: String

        public var hsnCodeId: String

        public var cgstTaxPercentage: Double

        public var igstTaxPercentage: Double

        public var igstGstFee: String

        public var sgstTaxPercentage: Double

        public var hsnCode: String

        public var valueOfGood: Double

        public var gstTaxPercentage: Double

        public var sgstGstFee: String

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstinCode = "gstin_code"

            case gstFee = "gst_fee"

            case isDefaultHsnCode = "is_default_hsn_code"

            case brandCalculatedAmount = "brand_calculated_amount"

            case cgstGstFee = "cgst_gst_fee"

            case hsnCodeId = "hsn_code_id"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case igstTaxPercentage = "igst_tax_percentage"

            case igstGstFee = "igst_gst_fee"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case hsnCode = "hsn_code"

            case valueOfGood = "value_of_good"

            case gstTaxPercentage = "gst_tax_percentage"

            case sgstGstFee = "sgst_gst_fee"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstTag = gstTag

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstinCode = gstinCode

            self.gstFee = gstFee

            self.isDefaultHsnCode = isDefaultHsnCode

            self.brandCalculatedAmount = brandCalculatedAmount

            self.cgstGstFee = cgstGstFee

            self.hsnCodeId = hsnCodeId

            self.cgstTaxPercentage = cgstTaxPercentage

            self.igstTaxPercentage = igstTaxPercentage

            self.igstGstFee = igstGstFee

            self.sgstTaxPercentage = sgstTaxPercentage

            self.hsnCode = hsnCode

            self.valueOfGood = valueOfGood

            self.gstTaxPercentage = gstTaxPercentage

            self.sgstGstFee = sgstGstFee
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

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
        public var gstTag: String

        public var taxCollectedAtSource: Double

        public var gstinCode: String?

        public var gstFee: Double

        public var isDefaultHsnCode: Bool?

        public var brandCalculatedAmount: Double

        public var cgstGstFee: String

        public var hsnCodeId: String

        public var cgstTaxPercentage: Double

        public var igstTaxPercentage: Double

        public var igstGstFee: String

        public var sgstTaxPercentage: Double

        public var hsnCode: String

        public var valueOfGood: Double

        public var gstTaxPercentage: Double

        public var sgstGstFee: String

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstinCode = "gstin_code"

            case gstFee = "gst_fee"

            case isDefaultHsnCode = "is_default_hsn_code"

            case brandCalculatedAmount = "brand_calculated_amount"

            case cgstGstFee = "cgst_gst_fee"

            case hsnCodeId = "hsn_code_id"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case igstTaxPercentage = "igst_tax_percentage"

            case igstGstFee = "igst_gst_fee"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case hsnCode = "hsn_code"

            case valueOfGood = "value_of_good"

            case gstTaxPercentage = "gst_tax_percentage"

            case sgstGstFee = "sgst_gst_fee"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstTag = gstTag

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstinCode = gstinCode

            self.gstFee = gstFee

            self.isDefaultHsnCode = isDefaultHsnCode

            self.brandCalculatedAmount = brandCalculatedAmount

            self.cgstGstFee = cgstGstFee

            self.hsnCodeId = hsnCodeId

            self.cgstTaxPercentage = cgstTaxPercentage

            self.igstTaxPercentage = igstTaxPercentage

            self.igstGstFee = igstGstFee

            self.sgstTaxPercentage = sgstTaxPercentage

            self.hsnCode = hsnCode

            self.valueOfGood = valueOfGood

            self.gstTaxPercentage = gstTaxPercentage

            self.sgstGstFee = sgstGstFee
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)
        }
    }
}
