

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var gstinCode: String?

        public var gstTag: String

        public var sgstTaxPercentage: Double

        public var isDefaultHsnCode: Bool?

        public var cgstTaxPercentage: Double

        public var hsnCode: String

        public var sgstGstFee: String

        public var igstTaxPercentage: Double

        public var taxCollectedAtSource: Double

        public var brandCalculatedAmount: Double

        public var gstFee: Double

        public var cgstGstFee: String

        public var valueOfGood: Double

        public var gstTaxPercentage: Double

        public var hsnCodeId: String

        public var igstGstFee: String

        public enum CodingKeys: String, CodingKey {
            case gstinCode = "gstin_code"

            case gstTag = "gst_tag"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case isDefaultHsnCode = "is_default_hsn_code"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case hsnCode = "hsn_code"

            case sgstGstFee = "sgst_gst_fee"

            case igstTaxPercentage = "igst_tax_percentage"

            case taxCollectedAtSource = "tax_collected_at_source"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstFee = "gst_fee"

            case cgstGstFee = "cgst_gst_fee"

            case valueOfGood = "value_of_good"

            case gstTaxPercentage = "gst_tax_percentage"

            case hsnCodeId = "hsn_code_id"

            case igstGstFee = "igst_gst_fee"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstinCode = gstinCode

            self.gstTag = gstTag

            self.sgstTaxPercentage = sgstTaxPercentage

            self.isDefaultHsnCode = isDefaultHsnCode

            self.cgstTaxPercentage = cgstTaxPercentage

            self.hsnCode = hsnCode

            self.sgstGstFee = sgstGstFee

            self.igstTaxPercentage = igstTaxPercentage

            self.taxCollectedAtSource = taxCollectedAtSource

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstFee = gstFee

            self.cgstGstFee = cgstGstFee

            self.valueOfGood = valueOfGood

            self.gstTaxPercentage = gstTaxPercentage

            self.hsnCodeId = hsnCodeId

            self.igstGstFee = igstGstFee
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTag = try container.decode(String.self, forKey: .gstTag)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)
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

        public var gstTag: String

        public var sgstTaxPercentage: Double

        public var isDefaultHsnCode: Bool?

        public var cgstTaxPercentage: Double

        public var hsnCode: String

        public var sgstGstFee: String

        public var igstTaxPercentage: Double

        public var taxCollectedAtSource: Double

        public var brandCalculatedAmount: Double

        public var gstFee: Double

        public var cgstGstFee: String

        public var valueOfGood: Double

        public var gstTaxPercentage: Double

        public var hsnCodeId: String

        public var igstGstFee: String

        public enum CodingKeys: String, CodingKey {
            case gstinCode = "gstin_code"

            case gstTag = "gst_tag"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case isDefaultHsnCode = "is_default_hsn_code"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case hsnCode = "hsn_code"

            case sgstGstFee = "sgst_gst_fee"

            case igstTaxPercentage = "igst_tax_percentage"

            case taxCollectedAtSource = "tax_collected_at_source"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstFee = "gst_fee"

            case cgstGstFee = "cgst_gst_fee"

            case valueOfGood = "value_of_good"

            case gstTaxPercentage = "gst_tax_percentage"

            case hsnCodeId = "hsn_code_id"

            case igstGstFee = "igst_gst_fee"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstinCode = gstinCode

            self.gstTag = gstTag

            self.sgstTaxPercentage = sgstTaxPercentage

            self.isDefaultHsnCode = isDefaultHsnCode

            self.cgstTaxPercentage = cgstTaxPercentage

            self.hsnCode = hsnCode

            self.sgstGstFee = sgstGstFee

            self.igstTaxPercentage = igstTaxPercentage

            self.taxCollectedAtSource = taxCollectedAtSource

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstFee = gstFee

            self.cgstGstFee = cgstGstFee

            self.valueOfGood = valueOfGood

            self.gstTaxPercentage = gstTaxPercentage

            self.hsnCodeId = hsnCodeId

            self.igstGstFee = igstGstFee
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTag = try container.decode(String.self, forKey: .gstTag)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)
        }
    }
}
