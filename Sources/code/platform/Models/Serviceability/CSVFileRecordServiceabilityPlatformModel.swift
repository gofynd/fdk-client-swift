

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: CSVFileRecord
         Used By: Serviceability
     */

    class CSVFileRecord: Codable {
        public var country: String?

        public var tatType: String?

        public var error: [String]?

        public var dpId: Int?

        public var fromRegion: String?

        public var planId: Int?

        public var isError: Bool?

        public var minTat: Int?

        public var maxTat: Int?

        public var sNo: Int?

        public var toRegion: String?

        public var regionType: String?

        public enum CodingKeys: String, CodingKey {
            case country

            case tatType = "tat_type"

            case error

            case dpId = "dp_id"

            case fromRegion = "from_region"

            case planId = "plan_id"

            case isError = "is_error"

            case minTat = "min_tat"

            case maxTat = "max_tat"

            case sNo = "s_no"

            case toRegion = "to_region"

            case regionType = "region_type"
        }

        public init(country: String? = nil, dpId: Int? = nil, error: [String]? = nil, fromRegion: String? = nil, isError: Bool? = nil, maxTat: Int? = nil, minTat: Int? = nil, planId: Int? = nil, regionType: String? = nil, sNo: Int? = nil, tatType: String? = nil, toRegion: String? = nil) {
            self.country = country

            self.tatType = tatType

            self.error = error

            self.dpId = dpId

            self.fromRegion = fromRegion

            self.planId = planId

            self.isError = isError

            self.minTat = minTat

            self.maxTat = maxTat

            self.sNo = sNo

            self.toRegion = toRegion

            self.regionType = regionType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tatType = try container.decode(String.self, forKey: .tatType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                error = try container.decode([String].self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpId = try container.decode(Int.self, forKey: .dpId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fromRegion = try container.decode(String.self, forKey: .fromRegion)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                planId = try container.decode(Int.self, forKey: .planId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isError = try container.decode(Bool.self, forKey: .isError)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                minTat = try container.decode(Int.self, forKey: .minTat)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maxTat = try container.decode(Int.self, forKey: .maxTat)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sNo = try container.decode(Int.self, forKey: .sNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                toRegion = try container.decode(String.self, forKey: .toRegion)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                regionType = try container.decode(String.self, forKey: .regionType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(tatType, forKey: .tatType)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(fromRegion, forKey: .fromRegion)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(isError, forKey: .isError)

            try? container.encodeIfPresent(minTat, forKey: .minTat)

            try? container.encodeIfPresent(maxTat, forKey: .maxTat)

            try? container.encodeIfPresent(sNo, forKey: .sNo)

            try? container.encodeIfPresent(toRegion, forKey: .toRegion)

            try? container.encodeIfPresent(regionType, forKey: .regionType)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: CSVFileRecord
         Used By: Serviceability
     */

    class CSVFileRecord: Codable {
        public var country: String?

        public var tatType: String?

        public var error: [String]?

        public var dpId: Int?

        public var fromRegion: String?

        public var planId: Int?

        public var isError: Bool?

        public var minTat: Int?

        public var maxTat: Int?

        public var sNo: Int?

        public var toRegion: String?

        public var regionType: String?

        public enum CodingKeys: String, CodingKey {
            case country

            case tatType = "tat_type"

            case error

            case dpId = "dp_id"

            case fromRegion = "from_region"

            case planId = "plan_id"

            case isError = "is_error"

            case minTat = "min_tat"

            case maxTat = "max_tat"

            case sNo = "s_no"

            case toRegion = "to_region"

            case regionType = "region_type"
        }

        public init(country: String? = nil, dpId: Int? = nil, error: [String]? = nil, fromRegion: String? = nil, isError: Bool? = nil, maxTat: Int? = nil, minTat: Int? = nil, planId: Int? = nil, regionType: String? = nil, sNo: Int? = nil, tatType: String? = nil, toRegion: String? = nil) {
            self.country = country

            self.tatType = tatType

            self.error = error

            self.dpId = dpId

            self.fromRegion = fromRegion

            self.planId = planId

            self.isError = isError

            self.minTat = minTat

            self.maxTat = maxTat

            self.sNo = sNo

            self.toRegion = toRegion

            self.regionType = regionType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tatType = try container.decode(String.self, forKey: .tatType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                error = try container.decode([String].self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpId = try container.decode(Int.self, forKey: .dpId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fromRegion = try container.decode(String.self, forKey: .fromRegion)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                planId = try container.decode(Int.self, forKey: .planId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isError = try container.decode(Bool.self, forKey: .isError)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                minTat = try container.decode(Int.self, forKey: .minTat)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maxTat = try container.decode(Int.self, forKey: .maxTat)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sNo = try container.decode(Int.self, forKey: .sNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                toRegion = try container.decode(String.self, forKey: .toRegion)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                regionType = try container.decode(String.self, forKey: .regionType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(tatType, forKey: .tatType)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(fromRegion, forKey: .fromRegion)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(isError, forKey: .isError)

            try? container.encodeIfPresent(minTat, forKey: .minTat)

            try? container.encodeIfPresent(maxTat, forKey: .maxTat)

            try? container.encodeIfPresent(sNo, forKey: .sNo)

            try? container.encodeIfPresent(toRegion, forKey: .toRegion)

            try? container.encodeIfPresent(regionType, forKey: .regionType)
        }
    }
}
