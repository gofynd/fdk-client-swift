

import Foundation
public extension PlatformClient {
    /*
         Model: CouponUpdate
         Used By: Cart
     */

    class CouponUpdate: Codable {
        public var rule: [Rule]

        public var code: String

        public var validation: Validation?

        public var tags: [String]?

        public var restrictions: Restrictions?

        public var ownership: Ownership

        public var author: CouponAuthor?

        public var displayMeta: DisplayMeta

        public var state: State?

        public var dateMeta: CouponDateMeta?

        public var typeSlug: String

        public var identifiers: Identifier

        public var action: CouponAction?

        public var validity: Validity

        public var schedule: CouponSchedule?

        public var ruleDefinition: RuleDefinition

        public enum CodingKeys: String, CodingKey {
            case rule

            case code

            case validation

            case tags

            case restrictions

            case ownership

            case author

            case displayMeta = "display_meta"

            case state

            case dateMeta = "date_meta"

            case typeSlug = "type_slug"

            case identifiers

            case action

            case validity

            case schedule = "_schedule"

            case ruleDefinition = "rule_definition"
        }

        public init(action: CouponAction? = nil, author: CouponAuthor? = nil, code: String, dateMeta: CouponDateMeta? = nil, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions? = nil, rule: [Rule], ruleDefinition: RuleDefinition, state: State? = nil, tags: [String]? = nil, typeSlug: String, validation: Validation? = nil, validity: Validity, schedule: CouponSchedule? = nil) {
            self.rule = rule

            self.code = code

            self.validation = validation

            self.tags = tags

            self.restrictions = restrictions

            self.ownership = ownership

            self.author = author

            self.displayMeta = displayMeta

            self.state = state

            self.dateMeta = dateMeta

            self.typeSlug = typeSlug

            self.identifiers = identifiers

            self.action = action

            self.validity = validity

            self.schedule = schedule

            self.ruleDefinition = ruleDefinition
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            rule = try container.decode([Rule].self, forKey: .rule)

            code = try container.decode(String.self, forKey: .code)

            do {
                validation = try container.decode(Validation.self, forKey: .validation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

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

            ownership = try container.decode(Ownership.self, forKey: .ownership)

            do {
                author = try container.decode(CouponAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)

            do {
                state = try container.decode(State.self, forKey: .state)

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

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                action = try container.decode(CouponAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            validity = try container.decode(Validity.self, forKey: .validity)

            do {
                schedule = try container.decode(CouponSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)
        }
    }
}
