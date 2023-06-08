

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var createdOn: String

        public var aggregatorPaymentObject: [String: Any]?

        public var userObject: [String: Any]

        public var collectedBy: String

        public var refundObject: [String: Any]?

        public var currency: String

        public var applicationId: String

        public var id: String

        public var currentStatus: String

        public var allStatus: [String]

        public var refundedBy: String

        public var companyId: String

        public var paymentId: String?

        public var paymentMode: String

        public var amountInPaisa: String

        public var paymentGateway: String

        public var modifiedOn: String

        public var paymentModeIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case userObject = "user_object"

            case collectedBy = "collected_by"

            case refundObject = "refund_object"

            case currency

            case applicationId = "application_id"

            case id

            case currentStatus = "current_status"

            case allStatus = "all_status"

            case refundedBy = "refunded_by"

            case companyId = "company_id"

            case paymentId = "payment_id"

            case paymentMode = "payment_mode"

            case amountInPaisa = "amount_in_paisa"

            case paymentGateway = "payment_gateway"

            case modifiedOn = "modified_on"

            case paymentModeIdentifier = "payment_mode_identifier"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.createdOn = createdOn

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.userObject = userObject

            self.collectedBy = collectedBy

            self.refundObject = refundObject

            self.currency = currency

            self.applicationId = applicationId

            self.id = id

            self.currentStatus = currentStatus

            self.allStatus = allStatus

            self.refundedBy = refundedBy

            self.companyId = companyId

            self.paymentId = paymentId

            self.paymentMode = paymentMode

            self.amountInPaisa = amountInPaisa

            self.paymentGateway = paymentGateway

            self.modifiedOn = modifiedOn

            self.paymentModeIdentifier = paymentModeIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            id = try container.decode(String.self, forKey: .id)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            companyId = try container.decode(String.self, forKey: .companyId)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var createdOn: String

        public var aggregatorPaymentObject: [String: Any]?

        public var userObject: [String: Any]

        public var collectedBy: String

        public var refundObject: [String: Any]?

        public var currency: String

        public var applicationId: String

        public var id: String

        public var currentStatus: String

        public var allStatus: [String]

        public var refundedBy: String

        public var companyId: String

        public var paymentId: String?

        public var paymentMode: String

        public var amountInPaisa: String

        public var paymentGateway: String

        public var modifiedOn: String

        public var paymentModeIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case userObject = "user_object"

            case collectedBy = "collected_by"

            case refundObject = "refund_object"

            case currency

            case applicationId = "application_id"

            case id

            case currentStatus = "current_status"

            case allStatus = "all_status"

            case refundedBy = "refunded_by"

            case companyId = "company_id"

            case paymentId = "payment_id"

            case paymentMode = "payment_mode"

            case amountInPaisa = "amount_in_paisa"

            case paymentGateway = "payment_gateway"

            case modifiedOn = "modified_on"

            case paymentModeIdentifier = "payment_mode_identifier"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.createdOn = createdOn

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.userObject = userObject

            self.collectedBy = collectedBy

            self.refundObject = refundObject

            self.currency = currency

            self.applicationId = applicationId

            self.id = id

            self.currentStatus = currentStatus

            self.allStatus = allStatus

            self.refundedBy = refundedBy

            self.companyId = companyId

            self.paymentId = paymentId

            self.paymentMode = paymentMode

            self.amountInPaisa = amountInPaisa

            self.paymentGateway = paymentGateway

            self.modifiedOn = modifiedOn

            self.paymentModeIdentifier = paymentModeIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            id = try container.decode(String.self, forKey: .id)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            companyId = try container.decode(String.self, forKey: .companyId)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)
        }
    }
}
