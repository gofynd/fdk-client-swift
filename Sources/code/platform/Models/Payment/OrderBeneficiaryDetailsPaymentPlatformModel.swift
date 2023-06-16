

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var isActive: Bool

        public var transferMode: String

        public var id: Int

        public var delightsUserName: String?

        public var beneficiaryId: String

        public var address: String

        public var subtitle: String

        public var modifiedOn: String

        public var title: String

        public var ifscCode: String

        public var displayName: String

        public var branchName: String?

        public var comment: String?

        public var bankName: String

        public var createdOn: String

        public var mobile: String?

        public var accountNo: String

        public var accountHolder: String

        public var email: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case transferMode = "transfer_mode"

            case id

            case delightsUserName = "delights_user_name"

            case beneficiaryId = "beneficiary_id"

            case address

            case subtitle

            case modifiedOn = "modified_on"

            case title

            case ifscCode = "ifsc_code"

            case displayName = "display_name"

            case branchName = "branch_name"

            case comment

            case bankName = "bank_name"

            case createdOn = "created_on"

            case mobile

            case accountNo = "account_no"

            case accountHolder = "account_holder"

            case email
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.isActive = isActive

            self.transferMode = transferMode

            self.id = id

            self.delightsUserName = delightsUserName

            self.beneficiaryId = beneficiaryId

            self.address = address

            self.subtitle = subtitle

            self.modifiedOn = modifiedOn

            self.title = title

            self.ifscCode = ifscCode

            self.displayName = displayName

            self.branchName = branchName

            self.comment = comment

            self.bankName = bankName

            self.createdOn = createdOn

            self.mobile = mobile

            self.accountNo = accountNo

            self.accountHolder = accountHolder

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            id = try container.decode(Int.self, forKey: .id)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            address = try container.decode(String.self, forKey: .address)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            title = try container.decode(String.self, forKey: .title)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankName = try container.decode(String.self, forKey: .bankName)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountNo = try container.decode(String.self, forKey: .accountNo)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            email = try container.decode(String.self, forKey: .email)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var isActive: Bool

        public var transferMode: String

        public var id: Int

        public var delightsUserName: String?

        public var beneficiaryId: String

        public var address: String

        public var subtitle: String

        public var modifiedOn: String

        public var title: String

        public var ifscCode: String

        public var displayName: String

        public var branchName: String?

        public var comment: String?

        public var bankName: String

        public var createdOn: String

        public var mobile: String?

        public var accountNo: String

        public var accountHolder: String

        public var email: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case transferMode = "transfer_mode"

            case id

            case delightsUserName = "delights_user_name"

            case beneficiaryId = "beneficiary_id"

            case address

            case subtitle

            case modifiedOn = "modified_on"

            case title

            case ifscCode = "ifsc_code"

            case displayName = "display_name"

            case branchName = "branch_name"

            case comment

            case bankName = "bank_name"

            case createdOn = "created_on"

            case mobile

            case accountNo = "account_no"

            case accountHolder = "account_holder"

            case email
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.isActive = isActive

            self.transferMode = transferMode

            self.id = id

            self.delightsUserName = delightsUserName

            self.beneficiaryId = beneficiaryId

            self.address = address

            self.subtitle = subtitle

            self.modifiedOn = modifiedOn

            self.title = title

            self.ifscCode = ifscCode

            self.displayName = displayName

            self.branchName = branchName

            self.comment = comment

            self.bankName = bankName

            self.createdOn = createdOn

            self.mobile = mobile

            self.accountNo = accountNo

            self.accountHolder = accountHolder

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            id = try container.decode(Int.self, forKey: .id)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            address = try container.decode(String.self, forKey: .address)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            title = try container.decode(String.self, forKey: .title)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankName = try container.decode(String.self, forKey: .bankName)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountNo = try container.decode(String.self, forKey: .accountNo)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            email = try container.decode(String.self, forKey: .email)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}
