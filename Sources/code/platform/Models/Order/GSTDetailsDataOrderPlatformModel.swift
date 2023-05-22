

import Foundation

public extension PlatformClient.Order {
    /*
         Model: GSTDetailsData
         Used By: Order
     */

    class GSTDetailsData: Codable {
        public var gstTag: String?

        public var cgstGstFee: String?

        public var igstTaxPercentage: Double?

        public var brandCalculatedAmount: Double

        public var taxCollectedAtSource: Double

        public var gstTaxPercentage: Double?

        public var sgstTaxPercentage: Double?

        public var hsnCodeId: String?

        public var sgstGstFee: String?

        public var gstFee: Double

        public var gstinCode: String

        public var hsnCode: String?

        public var isDefaultHsnCode: Bool?

        public var valueOfGood: Double

        public var igstGstFee: String?

        public var cgstTaxPercentage: Double?

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case cgstGstFee = "cgst_gst_fee"

            case igstTaxPercentage = "igst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstTaxPercentage = "gst_tax_percentage"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case hsnCodeId = "hsn_code_id"

            case sgstGstFee = "sgst_gst_fee"

            case gstFee = "gst_fee"

            case gstinCode = "gstin_code"

            case hsnCode = "hsn_code"

            case isDefaultHsnCode = "is_default_hsn_code"

            case valueOfGood = "value_of_good"

            case igstGstFee = "igst_gst_fee"

            case cgstTaxPercentage = "cgst_tax_percentage"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String? = nil, cgstTaxPercentage: Double? = nil, gstinCode: String, gstFee: Double, gstTag: String? = nil, gstTaxPercentage: Double? = nil, hsnCode: String? = nil, hsnCodeId: String? = nil, igstGstFee: String? = nil, igstTaxPercentage: Double? = nil, isDefaultHsnCode: Bool? = nil, sgstGstFee: String? = nil, sgstTaxPercentage: Double? = nil, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstTag = gstTag

            self.cgstGstFee = cgstGstFee

            self.igstTaxPercentage = igstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstTaxPercentage = gstTaxPercentage

            self.sgstTaxPercentage = sgstTaxPercentage

            self.hsnCodeId = hsnCodeId

            self.sgstGstFee = sgstGstFee

            self.gstFee = gstFee

            self.gstinCode = gstinCode

            self.hsnCode = hsnCode

            self.isDefaultHsnCode = isDefaultHsnCode

            self.valueOfGood = valueOfGood

            self.igstGstFee = igstGstFee

            self.cgstTaxPercentage = cgstTaxPercentage
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
                cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

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

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            do {
                gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

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

            do {
                hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

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

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            gstinCode = try container.decode(String.self, forKey: .gstinCode)

            do {
                hsnCode = try container.decode(String.self, forKey: .hsnCode)

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

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            do {
                igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: GSTDetailsData
         Used By: Order
     */

    class GSTDetailsData: Codable {
        public var gstTag: String?

        public var cgstGstFee: String?

        public var igstTaxPercentage: Double?

        public var brandCalculatedAmount: Double

        public var taxCollectedAtSource: Double

        public var gstTaxPercentage: Double?

        public var sgstTaxPercentage: Double?

        public var hsnCodeId: String?

        public var sgstGstFee: String?

        public var gstFee: Double

        public var gstinCode: String

        public var hsnCode: String?

        public var isDefaultHsnCode: Bool?

        public var valueOfGood: Double

        public var igstGstFee: String?

        public var cgstTaxPercentage: Double?

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case cgstGstFee = "cgst_gst_fee"

            case igstTaxPercentage = "igst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstTaxPercentage = "gst_tax_percentage"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case hsnCodeId = "hsn_code_id"

            case sgstGstFee = "sgst_gst_fee"

            case gstFee = "gst_fee"

            case gstinCode = "gstin_code"

            case hsnCode = "hsn_code"

            case isDefaultHsnCode = "is_default_hsn_code"

            case valueOfGood = "value_of_good"

            case igstGstFee = "igst_gst_fee"

            case cgstTaxPercentage = "cgst_tax_percentage"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String? = nil, cgstTaxPercentage: Double? = nil, gstinCode: String, gstFee: Double, gstTag: String? = nil, gstTaxPercentage: Double? = nil, hsnCode: String? = nil, hsnCodeId: String? = nil, igstGstFee: String? = nil, igstTaxPercentage: Double? = nil, isDefaultHsnCode: Bool? = nil, sgstGstFee: String? = nil, sgstTaxPercentage: Double? = nil, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstTag = gstTag

            self.cgstGstFee = cgstGstFee

            self.igstTaxPercentage = igstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstTaxPercentage = gstTaxPercentage

            self.sgstTaxPercentage = sgstTaxPercentage

            self.hsnCodeId = hsnCodeId

            self.sgstGstFee = sgstGstFee

            self.gstFee = gstFee

            self.gstinCode = gstinCode

            self.hsnCode = hsnCode

            self.isDefaultHsnCode = isDefaultHsnCode

            self.valueOfGood = valueOfGood

            self.igstGstFee = igstGstFee

            self.cgstTaxPercentage = cgstTaxPercentage
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
                cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

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

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            do {
                gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

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

            do {
                hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

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

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            gstinCode = try container.decode(String.self, forKey: .gstinCode)

            do {
                hsnCode = try container.decode(String.self, forKey: .hsnCode)

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

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            do {
                igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)
        }
    }
}
