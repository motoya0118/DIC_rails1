class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to '/contacts/new',notice: "問い合わせ送信完了"
    else
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name,:Email,:content)
  end


end
