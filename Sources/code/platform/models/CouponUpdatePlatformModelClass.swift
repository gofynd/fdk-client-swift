

import Foundation
public extension PlatformClient {
    /*
         Model: CouponUpdate
         Used By: Cart
     */

    class CouponUpdate: Codable {
        public var dateMeta: CouponDateMeta?

        public var typeSlug: String

        public var rule: [Rule]

        public var validity: Validity

        public var tags: [String]?

        public var ownership: Ownership

        public var displayMeta: DisplayMeta

        public var identifiers: Identifier

        public var state: State?

        public var validation: Validation?

        public var schedule: CouponSchedule?

        public var restrictions: Restrictions?

        public var action: CouponAction?

        public var code: String

        public var author: CouponAuthor?

        public var ruleDefinition: RuleDefinition

        public enum CodingKeys: String, CodingKey {
            case dateMeta = "date_meta"

            case typeSlug = "type_slug"

            case rule

            case validity

            case tags

            case ownership

            case displayMeta = "display_meta"

            case identifiers

            case state

            case validation

            case schedule = "_schedule"

            case restrictions

            case action

            case code

            case author

            case ruleDefinition = "rule_definition"
        }

        public init(action: CouponAction? = nil, author: CouponAuthor? = nil, code: String, dateMeta: CouponDateMeta? = nil, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions? = nil, rule: [Rule], ruleDefinition: RuleDefinition, state: State? = nil, tags: [String]? = nil, typeSlug: String, validation: Validation? = nil, validity: Validity, schedule: CouponSchedule? = nil) {
            self.dateMeta = dateMeta

            self.typeSlug = typeSlug

            self.rule = rule

            self.validity = validity

            self.tags = tags

            self.ownership = ownership

            self.displayMeta = displayMeta

            self.identifiers = identifiers

            self.state = state

            self.validation = validation

            self.schedule = schedule

            self.restrictions = restrictions

            self.action = action

            self.code = code

            self.author = author

            self.ruleDefinition = ruleDefinition
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            rule = try container.decode([Rule].self, forKey: .rule)

            validity = try container.decode(Validity.self, forKey: .validity)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ownership = try container.decode(Ownership.self, forKey: .ownership)

            displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                state = try container.decode(State.self, forKey: .state)

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
                schedule = try container.decode(CouponSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                restrictions = try container.decode(Restrictions.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(CouponAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(String.self, forKey: .code)

            do {
                author = try container.decode(CouponAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)
        }
    }
}
