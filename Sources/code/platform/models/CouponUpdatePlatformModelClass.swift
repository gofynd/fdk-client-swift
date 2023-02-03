

import Foundation
public extension PlatformClient {
    /*
         Model: CouponUpdate
         Used By: Cart
     */

    class CouponUpdate: Codable {
        public var restrictions: Restrictions?

        public var typeSlug: String

        public var validity: Validity

        public var ownership: Ownership

        public var author: CouponAuthor?

        public var schedule: CouponSchedule?

        public var rule: [Rule]

        public var action: CouponAction?

        public var ruleDefinition: RuleDefinition

        public var displayMeta: DisplayMeta

        public var identifiers: Identifier

        public var tags: [String]?

        public var dateMeta: CouponDateMeta?

        public var validation: Validation?

        public var state: State?

        public var code: String

        public enum CodingKeys: String, CodingKey {
            case restrictions

            case typeSlug = "type_slug"

            case validity

            case ownership

            case author

            case schedule = "_schedule"

            case rule

            case action

            case ruleDefinition = "rule_definition"

            case displayMeta = "display_meta"

            case identifiers

            case tags

            case dateMeta = "date_meta"

            case validation

            case state

            case code
        }

        public init(action: CouponAction? = nil, author: CouponAuthor? = nil, code: String, dateMeta: CouponDateMeta? = nil, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions? = nil, rule: [Rule], ruleDefinition: RuleDefinition, state: State? = nil, tags: [String]? = nil, typeSlug: String, validation: Validation? = nil, validity: Validity, schedule: CouponSchedule? = nil) {
            self.restrictions = restrictions

            self.typeSlug = typeSlug

            self.validity = validity

            self.ownership = ownership

            self.author = author

            self.schedule = schedule

            self.rule = rule

            self.action = action

            self.ruleDefinition = ruleDefinition

            self.displayMeta = displayMeta

            self.identifiers = identifiers

            self.tags = tags

            self.dateMeta = dateMeta

            self.validation = validation

            self.state = state

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                restrictions = try container.decode(Restrictions.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            validity = try container.decode(Validity.self, forKey: .validity)

            ownership = try container.decode(Ownership.self, forKey: .ownership)

            do {
                author = try container.decode(CouponAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode(CouponSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            rule = try container.decode([Rule].self, forKey: .rule)

            do {
                action = try container.decode(CouponAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)

            displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                validation = try container.decode(Validation.self, forKey: .validation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode(State.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(String.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
