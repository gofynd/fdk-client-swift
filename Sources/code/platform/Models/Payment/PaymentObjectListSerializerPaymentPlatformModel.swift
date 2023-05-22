

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var id: String

        public var paymentModeIdentifier: String

        public var paymentGateway: String

        public var refundedBy: String

        public var companyId: String

        public var currentStatus: String

        public var paymentMode: String

        public var collectedBy: String

        public var refundObject: [String: Any]?

        public var currency: String

        public var applicationId: String

        public var modifiedOn: String

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentId: String?

        public var allStatus: [String]

        public var createdOn: String

        public var userObject: [String: Any]

        public var amountInPaisa: String

        public enum CodingKeys: String, CodingKey {
            case id

            case paymentModeIdentifier = "payment_mode_identifier"

            case paymentGateway = "payment_gateway"

            case refundedBy = "refunded_by"

            case companyId = "company_id"

            case currentStatus = "current_status"

            case paymentMode = "payment_mode"

            case collectedBy = "collected_by"

            case refundObject = "refund_object"

            case currency

            case applicationId = "application_id"

            case modifiedOn = "modified_on"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentId = "payment_id"

            case allStatus = "all_status"

            case createdOn = "created_on"

            case userObject = "user_object"

            case amountInPaisa = "amount_in_paisa"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.id = id

            self.paymentModeIdentifier = paymentModeIdentifier

            self.paymentGateway = paymentGateway

            self.refundedBy = refundedBy

            self.companyId = companyId

            self.currentStatus = currentStatus

            self.paymentMode = paymentMode

            self.collectedBy = collectedBy

            self.refundObject = refundObject

            self.currency = currency

            self.applicationId = applicationId

            self.modifiedOn = modifiedOn

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentId = paymentId

            self.allStatus = allStatus

            self.createdOn = createdOn

            self.userObject = userObject

            self.amountInPaisa = amountInPaisa
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            companyId = try container.decode(String.self, forKey: .companyId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            allStatus = try container.decode([String].self, forKey: .allStatus)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var id: String

        public var paymentModeIdentifier: String

        public var paymentGateway: String

        public var refundedBy: String

        public var companyId: String

        public var currentStatus: String

        public var paymentMode: String

        public var collectedBy: String

        public var refundObject: [String: Any]?

        public var currency: String

        public var applicationId: String

        public var modifiedOn: String

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentId: String?

        public var allStatus: [String]

        public var createdOn: String

        public var userObject: [String: Any]

        public var amountInPaisa: String

        public enum CodingKeys: String, CodingKey {
            case id

            case paymentModeIdentifier = "payment_mode_identifier"

            case paymentGateway = "payment_gateway"

            case refundedBy = "refunded_by"

            case companyId = "company_id"

            case currentStatus = "current_status"

            case paymentMode = "payment_mode"

            case collectedBy = "collected_by"

            case refundObject = "refund_object"

            case currency

            case applicationId = "application_id"

            case modifiedOn = "modified_on"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentId = "payment_id"

            case allStatus = "all_status"

            case createdOn = "created_on"

            case userObject = "user_object"

            case amountInPaisa = "amount_in_paisa"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.id = id

            self.paymentModeIdentifier = paymentModeIdentifier

            self.paymentGateway = paymentGateway

            self.refundedBy = refundedBy

            self.companyId = companyId

            self.currentStatus = currentStatus

            self.paymentMode = paymentMode

            self.collectedBy = collectedBy

            self.refundObject = refundObject

            self.currency = currency

            self.applicationId = applicationId

            self.modifiedOn = modifiedOn

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentId = paymentId

            self.allStatus = allStatus

            self.createdOn = createdOn

            self.userObject = userObject

            self.amountInPaisa = amountInPaisa
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            companyId = try container.decode(String.self, forKey: .companyId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            allStatus = try container.decode([String].self, forKey: .allStatus)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)
        }
    }
}
