

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var hsnCodeId: String

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var avlQty: Int

        public var sku: String

        public var deliveryCharge: Double

        public var identifier: [String: Any]

        public var storeId: Int

        public var modifiedOn: String

        public var transferPrice: Int

        public var companyId: Int

        public var amountPaid: Double

        public var discount: Double

        public var priceEffective: Double

        public var sellerIdentifier: String

        public var unitPrice: Double

        public var affiliateMeta: [String: Any]

        public var itemId: Int

        public var priceMarked: Double

        public var itemSize: String

        public var id: String

        public var fyndStoreId: String

        public enum CodingKeys: String, CodingKey {
            case quantity

            case hsnCodeId = "hsn_code_id"

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case avlQty = "avl_qty"

            case sku

            case deliveryCharge = "delivery_charge"

            case identifier

            case storeId = "store_id"

            case modifiedOn = "modified_on"

            case transferPrice = "transfer_price"

            case companyId = "company_id"

            case amountPaid = "amount_paid"

            case discount

            case priceEffective = "price_effective"

            case sellerIdentifier = "seller_identifier"

            case unitPrice = "unit_price"

            case affiliateMeta = "affiliate_meta"

            case itemId = "item_id"

            case priceMarked = "price_marked"

            case itemSize = "item_size"

            case id = "_id"

            case fyndStoreId = "fynd_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.hsnCodeId = hsnCodeId

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.avlQty = avlQty

            self.sku = sku

            self.deliveryCharge = deliveryCharge

            self.identifier = identifier

            self.storeId = storeId

            self.modifiedOn = modifiedOn

            self.transferPrice = transferPrice

            self.companyId = companyId

            self.amountPaid = amountPaid

            self.discount = discount

            self.priceEffective = priceEffective

            self.sellerIdentifier = sellerIdentifier

            self.unitPrice = unitPrice

            self.affiliateMeta = affiliateMeta

            self.itemId = itemId

            self.priceMarked = priceMarked

            self.itemSize = itemSize

            self.id = id

            self.fyndStoreId = fyndStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sku = try container.decode(String.self, forKey: .sku)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            id = try container.decode(String.self, forKey: .id)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)
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

        public var hsnCodeId: String

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var avlQty: Int

        public var sku: String

        public var deliveryCharge: Double

        public var identifier: [String: Any]

        public var storeId: Int

        public var modifiedOn: String

        public var transferPrice: Int

        public var companyId: Int

        public var amountPaid: Double

        public var discount: Double

        public var priceEffective: Double

        public var sellerIdentifier: String

        public var unitPrice: Double

        public var affiliateMeta: [String: Any]

        public var itemId: Int

        public var priceMarked: Double

        public var itemSize: String

        public var id: String

        public var fyndStoreId: String

        public enum CodingKeys: String, CodingKey {
            case quantity

            case hsnCodeId = "hsn_code_id"

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case avlQty = "avl_qty"

            case sku

            case deliveryCharge = "delivery_charge"

            case identifier

            case storeId = "store_id"

            case modifiedOn = "modified_on"

            case transferPrice = "transfer_price"

            case companyId = "company_id"

            case amountPaid = "amount_paid"

            case discount

            case priceEffective = "price_effective"

            case sellerIdentifier = "seller_identifier"

            case unitPrice = "unit_price"

            case affiliateMeta = "affiliate_meta"

            case itemId = "item_id"

            case priceMarked = "price_marked"

            case itemSize = "item_size"

            case id = "_id"

            case fyndStoreId = "fynd_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.hsnCodeId = hsnCodeId

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.avlQty = avlQty

            self.sku = sku

            self.deliveryCharge = deliveryCharge

            self.identifier = identifier

            self.storeId = storeId

            self.modifiedOn = modifiedOn

            self.transferPrice = transferPrice

            self.companyId = companyId

            self.amountPaid = amountPaid

            self.discount = discount

            self.priceEffective = priceEffective

            self.sellerIdentifier = sellerIdentifier

            self.unitPrice = unitPrice

            self.affiliateMeta = affiliateMeta

            self.itemId = itemId

            self.priceMarked = priceMarked

            self.itemSize = itemSize

            self.id = id

            self.fyndStoreId = fyndStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sku = try container.decode(String.self, forKey: .sku)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            id = try container.decode(String.self, forKey: .id)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)
        }
    }
}
