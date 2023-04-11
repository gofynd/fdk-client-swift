

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var modifiedOn: String

        public var transferPrice: Int

        public var hsnCodeId: String

        public var sellerIdentifier: String

        public var unitPrice: Double

        public var fyndStoreId: String

        public var companyId: Int

        public var discount: Double

        public var affiliateStoreId: String

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var affiliateMeta: [String: Any]

        public var avlQty: Int

        public var sku: String

        public var itemSize: String

        public var priceEffective: Double

        public var pdfLinks: MarketPlacePdf?

        public var amountPaid: Double

        public var itemId: Int

        public var deliveryCharge: Double

        public var id: String

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case quantity

            case modifiedOn = "modified_on"

            case transferPrice = "transfer_price"

            case hsnCodeId = "hsn_code_id"

            case sellerIdentifier = "seller_identifier"

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case companyId = "company_id"

            case discount

            case affiliateStoreId = "affiliate_store_id"

            case identifier

            case priceMarked = "price_marked"

            case affiliateMeta = "affiliate_meta"

            case avlQty = "avl_qty"

            case sku

            case itemSize = "item_size"

            case priceEffective = "price_effective"

            case pdfLinks = "pdf_links"

            case amountPaid = "amount_paid"

            case itemId = "item_id"

            case deliveryCharge = "delivery_charge"

            case id = "_id"

            case storeId = "store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.modifiedOn = modifiedOn

            self.transferPrice = transferPrice

            self.hsnCodeId = hsnCodeId

            self.sellerIdentifier = sellerIdentifier

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.companyId = companyId

            self.discount = discount

            self.affiliateStoreId = affiliateStoreId

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.affiliateMeta = affiliateMeta

            self.avlQty = avlQty

            self.sku = sku

            self.itemSize = itemSize

            self.priceEffective = priceEffective

            self.pdfLinks = pdfLinks

            self.amountPaid = amountPaid

            self.itemId = itemId

            self.deliveryCharge = deliveryCharge

            self.id = id

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sku = try container.decode(String.self, forKey: .sku)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            id = try container.decode(String.self, forKey: .id)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var modifiedOn: String

        public var transferPrice: Int

        public var hsnCodeId: String

        public var sellerIdentifier: String

        public var unitPrice: Double

        public var fyndStoreId: String

        public var companyId: Int

        public var discount: Double

        public var affiliateStoreId: String

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var affiliateMeta: [String: Any]

        public var avlQty: Int

        public var sku: String

        public var itemSize: String

        public var priceEffective: Double

        public var pdfLinks: MarketPlacePdf?

        public var amountPaid: Double

        public var itemId: Int

        public var deliveryCharge: Double

        public var id: String

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case quantity

            case modifiedOn = "modified_on"

            case transferPrice = "transfer_price"

            case hsnCodeId = "hsn_code_id"

            case sellerIdentifier = "seller_identifier"

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case companyId = "company_id"

            case discount

            case affiliateStoreId = "affiliate_store_id"

            case identifier

            case priceMarked = "price_marked"

            case affiliateMeta = "affiliate_meta"

            case avlQty = "avl_qty"

            case sku

            case itemSize = "item_size"

            case priceEffective = "price_effective"

            case pdfLinks = "pdf_links"

            case amountPaid = "amount_paid"

            case itemId = "item_id"

            case deliveryCharge = "delivery_charge"

            case id = "_id"

            case storeId = "store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.modifiedOn = modifiedOn

            self.transferPrice = transferPrice

            self.hsnCodeId = hsnCodeId

            self.sellerIdentifier = sellerIdentifier

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.companyId = companyId

            self.discount = discount

            self.affiliateStoreId = affiliateStoreId

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.affiliateMeta = affiliateMeta

            self.avlQty = avlQty

            self.sku = sku

            self.itemSize = itemSize

            self.priceEffective = priceEffective

            self.pdfLinks = pdfLinks

            self.amountPaid = amountPaid

            self.itemId = itemId

            self.deliveryCharge = deliveryCharge

            self.id = id

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sku = try container.decode(String.self, forKey: .sku)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            id = try container.decode(String.self, forKey: .id)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}
