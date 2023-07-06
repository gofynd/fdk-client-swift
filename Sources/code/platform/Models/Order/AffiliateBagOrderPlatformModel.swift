

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceEffective: Double

        public var discount: Double

        public var sku: String

        public var avlQty: Int

        public var transferPrice: Int

        public var amountPaid: Double

        public var storeId: Int

        public var affiliateMeta: [String: Any]

        public var fyndStoreId: String

        public var companyId: Int

        public var affiliateStoreId: String

        public var id: String

        public var unitPrice: Double

        public var priceMarked: Double

        public var itemId: Int

        public var deliveryCharge: Double

        public var identifier: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var hsnCodeId: String

        public var sellerIdentifier: String

        public var modifiedOn: String

        public var itemSize: String

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case discount

            case sku

            case avlQty = "avl_qty"

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case storeId = "store_id"

            case affiliateMeta = "affiliate_meta"

            case fyndStoreId = "fynd_store_id"

            case companyId = "company_id"

            case affiliateStoreId = "affiliate_store_id"

            case id = "_id"

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case itemId = "item_id"

            case deliveryCharge = "delivery_charge"

            case identifier

            case pdfLinks = "pdf_links"

            case hsnCodeId = "hsn_code_id"

            case sellerIdentifier = "seller_identifier"

            case modifiedOn = "modified_on"

            case itemSize = "item_size"

            case quantity
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceEffective = priceEffective

            self.discount = discount

            self.sku = sku

            self.avlQty = avlQty

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.storeId = storeId

            self.affiliateMeta = affiliateMeta

            self.fyndStoreId = fyndStoreId

            self.companyId = companyId

            self.affiliateStoreId = affiliateStoreId

            self.id = id

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.itemId = itemId

            self.deliveryCharge = deliveryCharge

            self.identifier = identifier

            self.pdfLinks = pdfLinks

            self.hsnCodeId = hsnCodeId

            self.sellerIdentifier = sellerIdentifier

            self.modifiedOn = modifiedOn

            self.itemSize = itemSize

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            discount = try container.decode(Double.self, forKey: .discount)

            sku = try container.decode(String.self, forKey: .sku)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            id = try container.decode(String.self, forKey: .id)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemId = try container.decode(Int.self, forKey: .itemId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceEffective: Double

        public var discount: Double

        public var sku: String

        public var avlQty: Int

        public var transferPrice: Int

        public var amountPaid: Double

        public var storeId: Int

        public var affiliateMeta: [String: Any]

        public var fyndStoreId: String

        public var companyId: Int

        public var affiliateStoreId: String

        public var id: String

        public var unitPrice: Double

        public var priceMarked: Double

        public var itemId: Int

        public var deliveryCharge: Double

        public var identifier: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var hsnCodeId: String

        public var sellerIdentifier: String

        public var modifiedOn: String

        public var itemSize: String

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case discount

            case sku

            case avlQty = "avl_qty"

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case storeId = "store_id"

            case affiliateMeta = "affiliate_meta"

            case fyndStoreId = "fynd_store_id"

            case companyId = "company_id"

            case affiliateStoreId = "affiliate_store_id"

            case id = "_id"

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case itemId = "item_id"

            case deliveryCharge = "delivery_charge"

            case identifier

            case pdfLinks = "pdf_links"

            case hsnCodeId = "hsn_code_id"

            case sellerIdentifier = "seller_identifier"

            case modifiedOn = "modified_on"

            case itemSize = "item_size"

            case quantity
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceEffective = priceEffective

            self.discount = discount

            self.sku = sku

            self.avlQty = avlQty

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.storeId = storeId

            self.affiliateMeta = affiliateMeta

            self.fyndStoreId = fyndStoreId

            self.companyId = companyId

            self.affiliateStoreId = affiliateStoreId

            self.id = id

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.itemId = itemId

            self.deliveryCharge = deliveryCharge

            self.identifier = identifier

            self.pdfLinks = pdfLinks

            self.hsnCodeId = hsnCodeId

            self.sellerIdentifier = sellerIdentifier

            self.modifiedOn = modifiedOn

            self.itemSize = itemSize

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            discount = try container.decode(Double.self, forKey: .discount)

            sku = try container.decode(String.self, forKey: .sku)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            id = try container.decode(String.self, forKey: .id)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemId = try container.decode(Int.self, forKey: .itemId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
