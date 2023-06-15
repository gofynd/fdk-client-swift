

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var gstinCode: String?

        public var gstFee: Double

        public var hsnCode: String

        public var gstTaxPercentage: Double

        public var brandCalculatedAmount: Double

        public var taxCollectedAtSource: Double

        public var hsnCodeId: String

        public var sgstTaxPercentage: Double

        public var isDefaultHsnCode: Bool?

        public var igstGstFee: String

        public var igstTaxPercentage: Double

        public var valueOfGood: Double

        public var cgstTaxPercentage: Double

        public var gstTag: String

        public var sgstGstFee: String

        public var cgstGstFee: String

        public enum CodingKeys: String, CodingKey {
            case gstinCode = "gstin_code"

            case gstFee = "gst_fee"

            case hsnCode = "hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case hsnCodeId = "hsn_code_id"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case isDefaultHsnCode = "is_default_hsn_code"

            case igstGstFee = "igst_gst_fee"

            case igstTaxPercentage = "igst_tax_percentage"

            case valueOfGood = "value_of_good"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case gstTag = "gst_tag"

            case sgstGstFee = "sgst_gst_fee"

            case cgstGstFee = "cgst_gst_fee"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstinCode = gstinCode

            self.gstFee = gstFee

            self.hsnCode = hsnCode

            self.gstTaxPercentage = gstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.hsnCodeId = hsnCodeId

            self.sgstTaxPercentage = sgstTaxPercentage

            self.isDefaultHsnCode = isDefaultHsnCode

            self.igstGstFee = igstGstFee

            self.igstTaxPercentage = igstTaxPercentage

            self.valueOfGood = valueOfGood

            self.cgstTaxPercentage = cgstTaxPercentage

            self.gstTag = gstTag

            self.sgstGstFee = sgstGstFee

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

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

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

        public var gstFee: Double

        public var hsnCode: String

        public var gstTaxPercentage: Double

        public var brandCalculatedAmount: Double

        public var taxCollectedAtSource: Double

        public var hsnCodeId: String

        public var sgstTaxPercentage: Double

        public var isDefaultHsnCode: Bool?

        public var igstGstFee: String

        public var igstTaxPercentage: Double

        public var valueOfGood: Double

        public var cgstTaxPercentage: Double

        public var gstTag: String

        public var sgstGstFee: String

        public var cgstGstFee: String

        public enum CodingKeys: String, CodingKey {
            case gstinCode = "gstin_code"

            case gstFee = "gst_fee"

            case hsnCode = "hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case hsnCodeId = "hsn_code_id"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case isDefaultHsnCode = "is_default_hsn_code"

            case igstGstFee = "igst_gst_fee"

            case igstTaxPercentage = "igst_tax_percentage"

            case valueOfGood = "value_of_good"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case gstTag = "gst_tag"

            case sgstGstFee = "sgst_gst_fee"

            case cgstGstFee = "cgst_gst_fee"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstinCode = gstinCode

            self.gstFee = gstFee

            self.hsnCode = hsnCode

            self.gstTaxPercentage = gstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.hsnCodeId = hsnCodeId

            self.sgstTaxPercentage = sgstTaxPercentage

            self.isDefaultHsnCode = isDefaultHsnCode

            self.igstGstFee = igstGstFee

            self.igstTaxPercentage = igstTaxPercentage

            self.valueOfGood = valueOfGood

            self.cgstTaxPercentage = cgstTaxPercentage

            self.gstTag = gstTag

            self.sgstGstFee = sgstGstFee

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

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)
        }
    }
}
