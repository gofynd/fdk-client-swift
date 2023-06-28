

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: CSVFileRecord
         Used By: Serviceability
     */

    class CSVFileRecord: Codable {
        public var toRegion: String?

        public var sNo: Int?

        public var regionType: String?

        public var maxTat: Int?

        public var planId: Int?

        public var isError: Bool?

        public var country: String?

        public var tatType: String?

        public var dpId: Int?

        public var fromRegion: String?

        public var error: [String]?

        public var minTat: Int?

        public enum CodingKeys: String, CodingKey {
            case toRegion = "to_region"

            case sNo = "s_no"

            case regionType = "region_type"

            case maxTat = "max_tat"

            case planId = "plan_id"

            case isError = "is_error"

            case country

            case tatType = "tat_type"

            case dpId = "dp_id"

            case fromRegion = "from_region"

            case error

            case minTat = "min_tat"
        }

        public init(country: String? = nil, dpId: Int? = nil, error: [String]? = nil, fromRegion: String? = nil, isError: Bool? = nil, maxTat: Int? = nil, minTat: Int? = nil, planId: Int? = nil, regionType: String? = nil, sNo: Int? = nil, tatType: String? = nil, toRegion: String? = nil) {
            self.toRegion = toRegion

            self.sNo = sNo

            self.regionType = regionType

            self.maxTat = maxTat

            self.planId = planId

            self.isError = isError

            self.country = country

            self.tatType = tatType

            self.dpId = dpId

            self.fromRegion = fromRegion

            self.error = error

            self.minTat = minTat
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                toRegion = try container.decode(String.self, forKey: .toRegion)

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
                regionType = try container.decode(String.self, forKey: .regionType)

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
                error = try container.decode([String].self, forKey: .error)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(toRegion, forKey: .toRegion)

            try? container.encodeIfPresent(sNo, forKey: .sNo)

            try? container.encodeIfPresent(regionType, forKey: .regionType)

            try? container.encodeIfPresent(maxTat, forKey: .maxTat)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(isError, forKey: .isError)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(tatType, forKey: .tatType)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(fromRegion, forKey: .fromRegion)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(minTat, forKey: .minTat)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: CSVFileRecord
         Used By: Serviceability
     */

    class CSVFileRecord: Codable {
        public var toRegion: String?

        public var sNo: Int?

        public var regionType: String?

        public var maxTat: Int?

        public var planId: Int?

        public var isError: Bool?

        public var country: String?

        public var tatType: String?

        public var dpId: Int?

        public var fromRegion: String?

        public var error: [String]?

        public var minTat: Int?

        public enum CodingKeys: String, CodingKey {
            case toRegion = "to_region"

            case sNo = "s_no"

            case regionType = "region_type"

            case maxTat = "max_tat"

            case planId = "plan_id"

            case isError = "is_error"

            case country

            case tatType = "tat_type"

            case dpId = "dp_id"

            case fromRegion = "from_region"

            case error

            case minTat = "min_tat"
        }

        public init(country: String? = nil, dpId: Int? = nil, error: [String]? = nil, fromRegion: String? = nil, isError: Bool? = nil, maxTat: Int? = nil, minTat: Int? = nil, planId: Int? = nil, regionType: String? = nil, sNo: Int? = nil, tatType: String? = nil, toRegion: String? = nil) {
            self.toRegion = toRegion

            self.sNo = sNo

            self.regionType = regionType

            self.maxTat = maxTat

            self.planId = planId

            self.isError = isError

            self.country = country

            self.tatType = tatType

            self.dpId = dpId

            self.fromRegion = fromRegion

            self.error = error

            self.minTat = minTat
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                toRegion = try container.decode(String.self, forKey: .toRegion)

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
                regionType = try container.decode(String.self, forKey: .regionType)

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
                error = try container.decode([String].self, forKey: .error)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(toRegion, forKey: .toRegion)

            try? container.encodeIfPresent(sNo, forKey: .sNo)

            try? container.encodeIfPresent(regionType, forKey: .regionType)

            try? container.encodeIfPresent(maxTat, forKey: .maxTat)

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(isError, forKey: .isError)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(tatType, forKey: .tatType)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(fromRegion, forKey: .fromRegion)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(minTat, forKey: .minTat)
        }
    }
}
