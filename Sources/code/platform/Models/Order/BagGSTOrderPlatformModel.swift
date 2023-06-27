

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagGST
         Used By: Order
     */

    class BagGST: Codable {
        public var gstTag: String?

        public var gstTaxPercentage: Int?

        public var igstGstFee: String?

        public var hsnCodeId: String?

        public var igstTaxPercentage: Double?

        public var cgstTaxPercentage: Double?

        public var hsnCode: String?

        public var gstinCode: String?

        public var taxCollectedAtSource: Double?

        public var gstFee: Double?

        public var brandCalculatedAmount: Double?

        public var valueOfGood: Double?

        public var cgstGstFee: String?

        public var sgstGstFee: String?

        public var isDefaultHsnCode: Bool?

        public var sgstTaxPercentage: Double?

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case gstTaxPercentage = "gst_tax_percentage"

            case igstGstFee = "igst_gst_fee"

            case hsnCodeId = "hsn_code_id"

            case igstTaxPercentage = "igst_tax_percentage"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case hsnCode = "hsn_code"

            case gstinCode = "gstin_code"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstFee = "gst_fee"

            case brandCalculatedAmount = "brand_calculated_amount"

            case valueOfGood = "value_of_good"

            case cgstGstFee = "cgst_gst_fee"

            case sgstGstFee = "sgst_gst_fee"

            case isDefaultHsnCode = "is_default_hsn_code"

            case sgstTaxPercentage = "sgst_tax_percentage"
        }

        public init(brandCalculatedAmount: Double? = nil, cgstGstFee: String? = nil, cgstTaxPercentage: Double? = nil, gstinCode: String? = nil, gstFee: Double? = nil, gstTag: String? = nil, gstTaxPercentage: Int? = nil, hsnCode: String? = nil, hsnCodeId: String? = nil, igstGstFee: String? = nil, igstTaxPercentage: Double? = nil, isDefaultHsnCode: Bool? = nil, sgstGstFee: String? = nil, sgstTaxPercentage: Double? = nil, taxCollectedAtSource: Double? = nil, valueOfGood: Double? = nil) {
            self.gstTag = gstTag

            self.gstTaxPercentage = gstTaxPercentage

            self.igstGstFee = igstGstFee

            self.hsnCodeId = hsnCodeId

            self.igstTaxPercentage = igstTaxPercentage

            self.cgstTaxPercentage = cgstTaxPercentage

            self.hsnCode = hsnCode

            self.gstinCode = gstinCode

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstFee = gstFee

            self.brandCalculatedAmount = brandCalculatedAmount

            self.valueOfGood = valueOfGood

            self.cgstGstFee = cgstGstFee

            self.sgstGstFee = sgstGstFee

            self.isDefaultHsnCode = isDefaultHsnCode

            self.sgstTaxPercentage = sgstTaxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                gstTag = try container.decode(String.self, forKey: .gstTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hsnCode = try container.decode(String.self, forKey: .hsnCode)

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

            do {
                taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstFee = try container.decode(Double.self, forKey: .gstFee)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagGST
         Used By: Order
     */

    class BagGST: Codable {
        public var gstTag: String?

        public var gstTaxPercentage: Int?

        public var igstGstFee: String?

        public var hsnCodeId: String?

        public var igstTaxPercentage: Double?

        public var cgstTaxPercentage: Double?

        public var hsnCode: String?

        public var gstinCode: String?

        public var taxCollectedAtSource: Double?

        public var gstFee: Double?

        public var brandCalculatedAmount: Double?

        public var valueOfGood: Double?

        public var cgstGstFee: String?

        public var sgstGstFee: String?

        public var isDefaultHsnCode: Bool?

        public var sgstTaxPercentage: Double?

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case gstTaxPercentage = "gst_tax_percentage"

            case igstGstFee = "igst_gst_fee"

            case hsnCodeId = "hsn_code_id"

            case igstTaxPercentage = "igst_tax_percentage"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case hsnCode = "hsn_code"

            case gstinCode = "gstin_code"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstFee = "gst_fee"

            case brandCalculatedAmount = "brand_calculated_amount"

            case valueOfGood = "value_of_good"

            case cgstGstFee = "cgst_gst_fee"

            case sgstGstFee = "sgst_gst_fee"

            case isDefaultHsnCode = "is_default_hsn_code"

            case sgstTaxPercentage = "sgst_tax_percentage"
        }

        public init(brandCalculatedAmount: Double? = nil, cgstGstFee: String? = nil, cgstTaxPercentage: Double? = nil, gstinCode: String? = nil, gstFee: Double? = nil, gstTag: String? = nil, gstTaxPercentage: Int? = nil, hsnCode: String? = nil, hsnCodeId: String? = nil, igstGstFee: String? = nil, igstTaxPercentage: Double? = nil, isDefaultHsnCode: Bool? = nil, sgstGstFee: String? = nil, sgstTaxPercentage: Double? = nil, taxCollectedAtSource: Double? = nil, valueOfGood: Double? = nil) {
            self.gstTag = gstTag

            self.gstTaxPercentage = gstTaxPercentage

            self.igstGstFee = igstGstFee

            self.hsnCodeId = hsnCodeId

            self.igstTaxPercentage = igstTaxPercentage

            self.cgstTaxPercentage = cgstTaxPercentage

            self.hsnCode = hsnCode

            self.gstinCode = gstinCode

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstFee = gstFee

            self.brandCalculatedAmount = brandCalculatedAmount

            self.valueOfGood = valueOfGood

            self.cgstGstFee = cgstGstFee

            self.sgstGstFee = sgstGstFee

            self.isDefaultHsnCode = isDefaultHsnCode

            self.sgstTaxPercentage = sgstTaxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                gstTag = try container.decode(String.self, forKey: .gstTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hsnCode = try container.decode(String.self, forKey: .hsnCode)

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

            do {
                taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstFee = try container.decode(Double.self, forKey: .gstFee)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)
        }
    }
}
