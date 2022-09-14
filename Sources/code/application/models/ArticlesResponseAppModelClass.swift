

import Foundation
public extension ApplicationClient {
    /*
         Model: ArticlesResponse
         Used By: Logistic
     */
    class ArticlesResponse: Codable {
        public var error: TATError

        public var promise: Promise?

        public var manufacturingTime: Int?

        public var isCodAvailable: Bool?

        public var manufacturingTimeUnit: String?

        public var category: Category?

        public var manufacturingTimeSeconds: String?

        public enum CodingKeys: String, CodingKey {
            case error

            case promise

            case manufacturingTime = "manufacturing_time"

            case isCodAvailable = "is_cod_available"

            case manufacturingTimeUnit = "manufacturing_time_unit"

            case category

            case manufacturingTimeSeconds = "_manufacturing_time_seconds"
        }

        public init(category: Category? = nil, error: TATError, isCodAvailable: Bool? = nil, manufacturingTime: Int? = nil, manufacturingTimeUnit: String? = nil, promise: Promise? = nil, manufacturingTimeSeconds: String? = nil) {
            self.error = error

            self.promise = promise

            self.manufacturingTime = manufacturingTime

            self.isCodAvailable = isCodAvailable

            self.manufacturingTimeUnit = manufacturingTimeUnit

            self.category = category

            self.manufacturingTimeSeconds = manufacturingTimeSeconds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            error = try container.decode(TATError.self, forKey: .error)

            do {
                promise = try container.decode(Promise.self, forKey: .promise)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                manufacturingTime = try container.decode(Int.self, forKey: .manufacturingTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isCodAvailable = try container.decode(Bool.self, forKey: .isCodAvailable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                manufacturingTimeUnit = try container.decode(String.self, forKey: .manufacturingTimeUnit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                category = try container.decode(Category.self, forKey: .category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                manufacturingTimeSeconds = try container.decode(String.self, forKey: .manufacturingTimeSeconds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(promise, forKey: .promise)

            try? container.encodeIfPresent(manufacturingTime, forKey: .manufacturingTime)

            try? container.encodeIfPresent(isCodAvailable, forKey: .isCodAvailable)

            try? container.encodeIfPresent(manufacturingTimeUnit, forKey: .manufacturingTimeUnit)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(manufacturingTimeSeconds, forKey: .manufacturingTimeSeconds)
        }
    }
}
