

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var fyndStoreId: String

        public var hsnCodeId: String

        public var avlQty: Int

        public var quantity: Int

        public var amountPaid: Double

        public var id: String

        public var identifier: [String: Any]

        public var affiliateMeta: [String: Any]

        public var unitPrice: Double

        public var affiliateStoreId: String

        public var transferPrice: Int

        public var priceMarked: Double

        public var priceEffective: Double

        public var storeId: Int

        public var itemSize: String

        public var discount: Double

        public var modifiedOn: String

        public var sku: String

        public var pdfLinks: MarketPlacePdf?

        public var itemId: Int

        public var sellerIdentifier: String

        public var deliveryCharge: Double

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case fyndStoreId = "fynd_store_id"

            case hsnCodeId = "hsn_code_id"

            case avlQty = "avl_qty"

            case quantity

            case amountPaid = "amount_paid"

            case id = "_id"

            case identifier

            case affiliateMeta = "affiliate_meta"

            case unitPrice = "unit_price"

            case affiliateStoreId = "affiliate_store_id"

            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"

            case storeId = "store_id"

            case itemSize = "item_size"

            case discount

            case modifiedOn = "modified_on"

            case sku

            case pdfLinks = "pdf_links"

            case itemId = "item_id"

            case sellerIdentifier = "seller_identifier"

            case deliveryCharge = "delivery_charge"

            case companyId = "company_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.fyndStoreId = fyndStoreId

            self.hsnCodeId = hsnCodeId

            self.avlQty = avlQty

            self.quantity = quantity

            self.amountPaid = amountPaid

            self.id = id

            self.identifier = identifier

            self.affiliateMeta = affiliateMeta

            self.unitPrice = unitPrice

            self.affiliateStoreId = affiliateStoreId

            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective

            self.storeId = storeId

            self.itemSize = itemSize

            self.discount = discount

            self.modifiedOn = modifiedOn

            self.sku = sku

            self.pdfLinks = pdfLinks

            self.itemId = itemId

            self.sellerIdentifier = sellerIdentifier

            self.deliveryCharge = deliveryCharge

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            quantity = try container.decode(Int.self, forKey: .quantity)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            id = try container.decode(String.self, forKey: .id)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sku = try container.decode(String.self, forKey: .sku)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var fyndStoreId: String

        public var hsnCodeId: String

        public var avlQty: Int

        public var quantity: Int

        public var amountPaid: Double

        public var id: String

        public var identifier: [String: Any]

        public var affiliateMeta: [String: Any]

        public var unitPrice: Double

        public var affiliateStoreId: String

        public var transferPrice: Int

        public var priceMarked: Double

        public var priceEffective: Double

        public var storeId: Int

        public var itemSize: String

        public var discount: Double

        public var modifiedOn: String

        public var sku: String

        public var pdfLinks: MarketPlacePdf?

        public var itemId: Int

        public var sellerIdentifier: String

        public var deliveryCharge: Double

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case fyndStoreId = "fynd_store_id"

            case hsnCodeId = "hsn_code_id"

            case avlQty = "avl_qty"

            case quantity

            case amountPaid = "amount_paid"

            case id = "_id"

            case identifier

            case affiliateMeta = "affiliate_meta"

            case unitPrice = "unit_price"

            case affiliateStoreId = "affiliate_store_id"

            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"

            case storeId = "store_id"

            case itemSize = "item_size"

            case discount

            case modifiedOn = "modified_on"

            case sku

            case pdfLinks = "pdf_links"

            case itemId = "item_id"

            case sellerIdentifier = "seller_identifier"

            case deliveryCharge = "delivery_charge"

            case companyId = "company_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.fyndStoreId = fyndStoreId

            self.hsnCodeId = hsnCodeId

            self.avlQty = avlQty

            self.quantity = quantity

            self.amountPaid = amountPaid

            self.id = id

            self.identifier = identifier

            self.affiliateMeta = affiliateMeta

            self.unitPrice = unitPrice

            self.affiliateStoreId = affiliateStoreId

            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective

            self.storeId = storeId

            self.itemSize = itemSize

            self.discount = discount

            self.modifiedOn = modifiedOn

            self.sku = sku

            self.pdfLinks = pdfLinks

            self.itemId = itemId

            self.sellerIdentifier = sellerIdentifier

            self.deliveryCharge = deliveryCharge

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            quantity = try container.decode(Int.self, forKey: .quantity)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            id = try container.decode(String.self, forKey: .id)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sku = try container.decode(String.self, forKey: .sku)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
