

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var amountPaid: Double

        public var unitPrice: Double

        public var modifiedOn: String

        public var fyndStoreId: String

        public var quantity: Int

        public var priceEffective: Double

        public var pdfLinks: MarketPlacePdf?

        public var sellerIdentifier: String

        public var itemId: Int

        public var priceMarked: Double

        public var transferPrice: Int

        public var storeId: Int

        public var identifier: [String: Any]

        public var discount: Double

        public var sku: String

        public var hsnCodeId: String

        public var deliveryCharge: Double

        public var companyId: Int

        public var itemSize: String

        public var id: String

        public var avlQty: Int

        public var affiliateStoreId: String

        public var affiliateMeta: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case unitPrice = "unit_price"

            case modifiedOn = "modified_on"

            case fyndStoreId = "fynd_store_id"

            case quantity

            case priceEffective = "price_effective"

            case pdfLinks = "pdf_links"

            case sellerIdentifier = "seller_identifier"

            case itemId = "item_id"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case storeId = "store_id"

            case identifier

            case discount

            case sku

            case hsnCodeId = "hsn_code_id"

            case deliveryCharge = "delivery_charge"

            case companyId = "company_id"

            case itemSize = "item_size"

            case id = "_id"

            case avlQty = "avl_qty"

            case affiliateStoreId = "affiliate_store_id"

            case affiliateMeta = "affiliate_meta"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.amountPaid = amountPaid

            self.unitPrice = unitPrice

            self.modifiedOn = modifiedOn

            self.fyndStoreId = fyndStoreId

            self.quantity = quantity

            self.priceEffective = priceEffective

            self.pdfLinks = pdfLinks

            self.sellerIdentifier = sellerIdentifier

            self.itemId = itemId

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.storeId = storeId

            self.identifier = identifier

            self.discount = discount

            self.sku = sku

            self.hsnCodeId = hsnCodeId

            self.deliveryCharge = deliveryCharge

            self.companyId = companyId

            self.itemSize = itemSize

            self.id = id

            self.avlQty = avlQty

            self.affiliateStoreId = affiliateStoreId

            self.affiliateMeta = affiliateMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            discount = try container.decode(Double.self, forKey: .discount)

            sku = try container.decode(String.self, forKey: .sku)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            id = try container.decode(String.self, forKey: .id)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var amountPaid: Double

        public var unitPrice: Double

        public var modifiedOn: String

        public var fyndStoreId: String

        public var quantity: Int

        public var priceEffective: Double

        public var pdfLinks: MarketPlacePdf?

        public var sellerIdentifier: String

        public var itemId: Int

        public var priceMarked: Double

        public var transferPrice: Int

        public var storeId: Int

        public var identifier: [String: Any]

        public var discount: Double

        public var sku: String

        public var hsnCodeId: String

        public var deliveryCharge: Double

        public var companyId: Int

        public var itemSize: String

        public var id: String

        public var avlQty: Int

        public var affiliateStoreId: String

        public var affiliateMeta: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case unitPrice = "unit_price"

            case modifiedOn = "modified_on"

            case fyndStoreId = "fynd_store_id"

            case quantity

            case priceEffective = "price_effective"

            case pdfLinks = "pdf_links"

            case sellerIdentifier = "seller_identifier"

            case itemId = "item_id"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case storeId = "store_id"

            case identifier

            case discount

            case sku

            case hsnCodeId = "hsn_code_id"

            case deliveryCharge = "delivery_charge"

            case companyId = "company_id"

            case itemSize = "item_size"

            case id = "_id"

            case avlQty = "avl_qty"

            case affiliateStoreId = "affiliate_store_id"

            case affiliateMeta = "affiliate_meta"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.amountPaid = amountPaid

            self.unitPrice = unitPrice

            self.modifiedOn = modifiedOn

            self.fyndStoreId = fyndStoreId

            self.quantity = quantity

            self.priceEffective = priceEffective

            self.pdfLinks = pdfLinks

            self.sellerIdentifier = sellerIdentifier

            self.itemId = itemId

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.storeId = storeId

            self.identifier = identifier

            self.discount = discount

            self.sku = sku

            self.hsnCodeId = hsnCodeId

            self.deliveryCharge = deliveryCharge

            self.companyId = companyId

            self.itemSize = itemSize

            self.id = id

            self.avlQty = avlQty

            self.affiliateStoreId = affiliateStoreId

            self.affiliateMeta = affiliateMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            discount = try container.decode(Double.self, forKey: .discount)

            sku = try container.decode(String.self, forKey: .sku)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            id = try container.decode(String.self, forKey: .id)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
        }
    }
}
